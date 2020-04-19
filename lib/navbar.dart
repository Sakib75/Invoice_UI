import 'package:flutter/material.dart';

Color activeColor = Colors.white;
Color inactiveColor = Colors.transparent;
class NavBar extends StatefulWidget {

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color UnpaidColor = activeColor;
  Color PaidColor = inactiveColor;
  int isSelected = 2;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xffE8E8EA),
      ),

      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = 2;
                    });
                  },

                    child: NavItems(label: 'Unpaid',color: isSelected == 2 ? activeColor : inactiveColor,)),
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      print('Button Tapper');
                      setState(() {
                        isSelected = 3;

                      });
                    },

                    child: NavItems(label: 'Paid',color: isSelected == 3 ? activeColor : inactiveColor,)),
              ),



            ],
          )
      ),
    );

  }
}

class NavItems extends StatelessWidget {
  NavItems({this.label,this.color});
  String label ;
  Color color;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: color,
        ),

        child: Center(child: Text(label,style: TextStyle(fontSize: 20),)));
  }
}
