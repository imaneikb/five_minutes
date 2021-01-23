import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class MapPage extends StatefulWidget{
  MapPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MapPageState createState() => _MapPageState();
}
class _MapPageState extends State<MapPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                bodyWidget: Center(
                  child: Text(
                    "Lors d'une accident,agissez avec sagesse la situation pour réduire les dégâts.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      )
                    ]),
                  ),
                ),
                image: Image.asset(""),
                titleWidget: Text(
                  "Mr/Mme conducteur",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                )),
            PageViewModel(
                title: "Protéger l'entourage de l'accident",
                bodyWidget: Center(
                  child: Text(
                    "Une protection du lieu est nécessaire pour s'assurer \nque la circulation n'est pas obstruée afin déviter d'autres accidents",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      )
                    ]),
                  ),
                ),
                image: Image.asset("images/accident.png")),
            PageViewModel(
                title: "Appeler l'ambulance",
                bodyWidget: Center(
                  child: Text(
                    "Si un piéton est heurté,il faut dans ce cas appeler une ambulance\n,même si le cas ne nécessite pas l'hôpital",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      )
                    ]),
                  ),
                ),
                image: Image.asset("images/ambulance.png")),
            PageViewModel(
                title: "Premiers secours",
                bodyWidget: Center(
                  child: Text(
                    "En attendant l'ambulance,on peut sauvez la vie de la victimes en appliquant des premiers secours",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      )
                    ]),
                  ),
                ),
                image: Image.asset("images/pansement.png")),
            PageViewModel(
                title: "Assurance",
                bodyWidget: Center(
                  child: Text(
                    "Dans ces situations,le rôle de votre assrance se met en accent fortement \npour la compensation finacière de la victime,alors vos devez informer votre assurance",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500, shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      )
                    ]),
                  ),
                ),
                image: Image.asset("images/assurance.png"))
          ],
          onDone: () {
            print("Done is clicked");
          },
          showSkipButton: true,
          showNextButton: true,
          nextFlex: 1,
          dotsFlex: 2,
          skipFlex: 1,
          animationDuration: 1000,
          curve: Curves.fastOutSlowIn,
          dotsDecorator: DotsDecorator(
              spacing: EdgeInsets.all(5),
              activeColor: Color(0xFF228B22),
              // activeSize: Size.square(10),
              // size: Size.square(5),
              activeSize: Size(20, 10),
              size: Size.square(10),
              activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          skip: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Color(0xFF228B22),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: Text(
                "passer",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          next: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color(0xFF228B22), width: 2)),
            child: Center(
              child: Icon(
                Icons.navigate_next,
                size: 30,
                color: Color(0xFF228B22),
              ),
            ),
          ),
          done: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Color(0xFF228B22),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 40,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: Text(
                "Bravo!",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }

}