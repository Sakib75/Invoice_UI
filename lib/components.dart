import 'package:flutter/material.dart';
const TextStyle ktitle = TextStyle(fontSize: 50);
const Color fadecolor = Color(0xffE8E8EA);
class Contents extends StatelessWidget {
  const Contents({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('OVERDUE',style: TextStyle(fontSize: 18,color: Colors.blueGrey.withOpacity(0.6)),),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context,index) {
              return ContentCard(index: index,color: Colors.red,);
            }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('VIEWED',style: TextStyle(fontSize: 18,color: Colors.blueGrey.withOpacity(0.6)),),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context,index) {
              return ContentCard(index: index,);
            }),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}

class ContentCard extends StatelessWidget {
  ContentCard({this.index,this.color});
  int index;
  Color color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE8E8EA),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  width: 50,
                  child: Center(
                    child: Text('G',style: TextStyle(fontSize: 25),),
                  ),

                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Jonah Geluk',style: TextStyle(fontSize: 25),),
                    Text('#invoice 0028',style: TextStyle(color: Colors.blueGrey.withOpacity(0.6)))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('\$9200',style: TextStyle(fontSize: 25),),
                Text('Due 20 days ago',style: TextStyle(color: color),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FancyFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle
      ),
    );
  }
}


class FancyFabb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle
      ),
      child: Center(child: Text('NEW',style: TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
}
