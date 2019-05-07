import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  
  List<int> mList;
  List<ExpandStateBean> expandStateList;
  _ExpansionPanelListDemoState(){
    mList = new List();
    expandStateList = new List();
    for(int i=0;i<10;++i){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  _setCurrentIndex(int index,isExpand){
    setState(() {
          expandStateList.forEach((item){
            if(item.index == index){
              item.isOpen = !isExpand;
            }
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('expansion panel list'),),
       body: SingleChildScrollView(
         child: ExpansionPanelList(
           expansionCallback: (index,bol){
             _setCurrentIndex(index, bol);
           },
           children: mList.map((index){
             return ExpansionPanel(
               headerBuilder: (context,isExpanded){
                 return ListTile(
                   title: Text('This is No.$index'),
                 );
               },
               body: ListTile(
                 title: Text('expansion no.$index'),
               ),
               isExpanded: expandStateList[index].isOpen
             );
           }).toList(),
         ),
       ),
    );
  }
}

class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}