import 'package:day22/calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool ? isMale;

  int weight=50;
  int age=20;
  double height=120;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),),
      backgroundColor: Color(0xff0A0E21),
      elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
             children: [
              Expanded(
                flex: 5,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isMale=true;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: isMale==true?Colors.teal: Color(0xff4C4E5F),
                      borderRadius: BorderRadius.circular(12),
                
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male,size: 60,color: Colors.white,),
                        Text("Male",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),                   
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isMale=false;
                    });
                  },
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: isMale==false?Colors.teal : Color(0xff4C4E5F),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,size: 60,color: Colors.white,),
                      Text("Female",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
                    ],
                  ),
                ),
                ),
              ),
             ], 
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4C4E5F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   Text("Height",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white70),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text("${height.toStringAsFixed(1)}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white,),),
                      Text("cm",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200,color: Colors.white70,),),
                     
                    ],
                   ),
                    SliderTheme(data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 8.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 12.0,
                        ),
                        thumbColor: Colors.pink,
                        overlayColor: Colors.pinkAccent,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.green,
                      ),
                       child: Slider(
                        min: 50,
                        max: 200,
                        value: height, onChanged: (value){
                        setState(() {
                          height=value;
                        });
                       })),
                    ],
                  ),

            ),
          ),
 Expanded(
            flex: 6,
            child: Row(
             children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4C4E5F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text("Weight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white70),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("$weight",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          OutlinedButton(onPressed: (){
                            if(weight>0){
                              setState(() {
                                weight--;
                              });
                            }
                          },
                           child: Icon(Icons.remove),
                           style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white70,
                            shape: CircleBorder(),
                           ),
                           ),
                          OutlinedButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                           child: Icon(Icons.add),
                           style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white70,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(5),
                           ),
                           ),
                         ], 
                        ),    
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4C4E5F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white70),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("$age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white70),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(onPressed: (){
                            if(age>0){
                              setState(() {
                                age--;
                              });
                            }
                      }, 
                      child: Icon(Icons.remove),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(5),
                      ),
                      ),
                      OutlinedButton(onPressed: (){
                        setState(() {
                          age++;
                        });
                      }, 
                      child: Icon(Icons.add),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(5),
                      ),
                      ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             ], 
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: (){
                final cal=Calculation(age: age,height: height,weight: weight);
                bmi=cal.getResult();
                showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: Text("Your BMI is ${bmi.toStringAsFixed(0)}"),
        content: Text(bmi>25 ? "OverWeight" : bmi>18 ?"Normal": "UnderWeight"),
        actions: <Widget>[
          new FlatButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(); // dismisses only the dialog and returns nothing
            },
            child: new Text('OK'),
          ),
        ],
      ),
    );
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.pink,
                alignment: Alignment.center,
                child: Text("Calculate",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
              ),
            ),
          ),    
        ],
      ),
    );
  }
   var bmi;
}