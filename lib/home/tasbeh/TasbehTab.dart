import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  double rotationAngle = 40;
  int index = 0 ;

  @override
  Widget build(BuildContext context) {
    if (tasbeh.isEmpty){
      loadHadethFile();
    }

    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50),
        child: Image.asset('assets/images/head_of_sebha.png')),
              Transform.rotate(
                angle: rotationAngle,
                child: Container(

                  margin: EdgeInsets.symmetric(vertical: 80),
                    child: Image.asset('assets/images/body_of_sebha.png')),
              ),

            ],
          ),

          Text('Number of tasbehat',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
          Container(
            margin: EdgeInsets.all(15),
            child:TextButton(
              style: TextButton.styleFrom(
                  foregroundColor:Colors.black,
                  backgroundColor: Color(0xffc5b391),
                  padding:  EdgeInsets.all(15.0),
                  textStyle:  TextStyle(fontSize: 35),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
              ),
              onPressed: () {
                if (counter == 33){
                  counter = 0 ;
                  if (index == tasbeh.length-1){
                    index = 0 ;
                  }else{
                    index++;
                  }
                  rotationAngle +=40;
                }else
                  counter++;
                rotationAngle +=40;

                setState(() {

                });
              },
              child:  Text('${counter}'),
            ),
          ),



          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).dividerColor,
            )
            ,
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(tasbeh[index],style: TextStyle(fontSize: 25,color: Colors.white ),),
            ),
          ),


    ]
    )
    );
  }

  List<String> tasbeh = [];

  void loadHadethFile() async {
    String fileContent =
    await rootBundle.loadString('assets/files/tasbeh.txt');
    List<String> tasbehList = fileContent.trim().split('\n');
    for (int i = 0; i < tasbehList.length; i++) {
      String singleTasbeh = tasbehList[i];
      tasbeh.add(singleTasbeh);
    }
    setState(() {});
  }

}
