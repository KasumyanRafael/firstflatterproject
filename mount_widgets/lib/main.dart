import 'package:flutter/material.dart';
final Color mainColor = Color(0xFFFF5656);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashPage()
    )
  );
}
class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Future.delayed(const Duration(seconds: 2), () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MountsApp()));
});
    return Container(
      color:mainColor,
      child: Stack(
        children:[
          Align(
            alignment: Alignment.center,
            child:Icon(Icons.terrain,color:Colors.white,size:90),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child:CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
              )
          )
        ],
      )
    );
  }
}

class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
        title:Center(
          child:Icon(
            Icons.terrain,
            color:mainColor,
            size:40
          )
        ),
        actions:[
          SizedBox(width:40,height:40)
        ],
        iconTheme: IconThemeData(color:mainColor)
      ),
      drawer:Drawer(),
      body: Center(
        child: Text('Welcome to Mounts of the World')
      )
    );
  }
}


