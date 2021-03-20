import 'package:day12_login/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
                width: 700,
	              height: 400,
	              child: Stack(
	                children: <Widget>[
                    Positioned(
	                    width: 450,
	                    height: 350,
	                    child: FadeAnimation(0, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/background1.png'),
                            fit: BoxFit.fill
	                        )
	                      ),
	                    )
                      ),
	                  ),
	                  Positioned(
	                    width: 450,
	                    height: 350,
	                    child: FadeAnimation(0, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.fill
	                        )
	                      ),
	                    )
                      ),
	                  ),
                    Positioned(
	                    width: 450,
	                    height: 350,
                      
	                    child: FadeAnimation(0, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.fill
	                        )
	                      ),
	                    )
                      ),
	                  ),
	                  Positioned(
	                    child: FadeAnimation(1.6, Container(
                        
	                      margin: EdgeInsets.only(top: 150),
                        width: 400,
                        
	                      child: Column(
                          
	                        children: <Widget>[
                            Text("Bienvenido", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal, letterSpacing: 10),),
                            Text("Iniciar Sesion", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)
                            
                          ]
	                      ),
	                    )),
	                  )
	                ],
	              ),
	            ),
	            Padding(
	              padding: EdgeInsets.all(30.0),
	              child: Column(
	                children: <Widget>[
	                  FadeAnimation(1.8, Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
	                          ),
	                          child: TextField(

	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Correo Electronico",
	                              hintStyle: TextStyle(color: Colors.grey[600]),
                                prefixIcon: Icon(Icons.email,size: 21,)
                                
	                            ),
	                          ),
	                        ),
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextField(
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Contraseña",
	                              hintStyle: TextStyle(color: Colors.grey[600]),
                                prefixIcon: Icon(Icons.vpn_key, size: 21,)
	                            ),
	                          ),
	                        )
	                      ],
	                    ),
	                  )),
	                  SizedBox(height: 30,),
	                  FadeAnimation(2, Container(
	                    height: 50,
	                    decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(255, 72, 254, 0.5)
                        ])
	                      
	                    ),
	                    child: Center(
	                      child: Text("Iniciar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
	                    ),
	                  )
                    ),
                    SizedBox(height: 30,),
	                  FadeAnimation(2, Container(
	                    height: 50,
	                    decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(15),
	                      gradient: LinearGradient(
                          colors: [
                          Color.fromRGBO(143, 148, 251, 1),
                          Color.fromRGBO(255, 72, 254, 0.5)
                        ])
	                    ),
	                    child: Center(
	                      child: Text("Registrarme", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
	                    ),
	                  )
                    )

	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );
  }
}