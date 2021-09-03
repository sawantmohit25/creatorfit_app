import 'package:flutter/material.dart';
import 'package:project_app/shopping_list_model.dart';
class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  List<ShoppingListModel> shoppingList=ShoppingListModel.getShoppingList();
  int countItems=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        title:Text('Shopping list',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.black),),
        leading:IconButton(
          icon:Icon(Icons.arrow_back),
          color:Colors.black,
          onPressed:(){},
        ),
      ),
      body:Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,0,15,0),
          child: ListView.separated(
            itemBuilder:(context,index){
              return ListTile(
                leading:Container(
                  height:20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(3.5),
                    border: Border.all(
                        color:Colors.deepPurple,width:2.0),
                  ),
                  child: Theme(
                    data:ThemeData(
                      unselectedWidgetColor:Colors.deepPurple,
                    ),
                    child: Checkbox(
                      // fillColor:MaterialStateProperty.all(shoppingList[index].activeColor?Colors.deepPurple:Colors.white),
                      activeColor:shoppingList[index].activeColor?Colors.deepPurple:Colors.white,
                      value:shoppingList[index].isChecked,
                      checkColor:shoppingList[index].checkColor?Colors.white:Colors.deepPurple[100],
                      onChanged:(val){
                        setState(() {
                          shoppingList[index].activeColor=!shoppingList[index].activeColor;
                          shoppingList[index].checkColor=!shoppingList[index].checkColor;
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0,20,0,20),
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(width:160,height:40,child: ElevatedButton(style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white),shape: MaterialStateProperty.all(RoundedRectangleBorder(side:BorderSide(color: Colors.deepPurple, style: BorderStyle.solid, width: 1),borderRadius: BorderRadius.circular(30.0))),),onPressed:(){}, child:Text('Remove',style:TextStyle(color:Colors.deepPurple),))),
                                            Container(width:160,height:40,child: ElevatedButton(style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.deepPurple),shape: MaterialStateProperty.all(RoundedRectangleBorder(side:BorderSide(color: Colors.deepPurple, style: BorderStyle.solid, width: 1),borderRadius: BorderRadius.circular(30.0))),),onPressed:(){}, child:Text('Complete',style:TextStyle(color:Colors.white),))),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0,20,0,50),
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.center,
                                          children: [
                                            Text('${countItems} items selected'),
                                            SizedBox(width:10.0,),
                                            InkWell(onTap:(){},child:Text('Clear selection',style: TextStyle(color:Colors.deepPurple,decoration: TextDecoration.underline,decorationColor:Colors.deepPurple),),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        });
                      },
                    ),
                  ),
                ),
                title:Text(shoppingList[index].productTitle,style:TextStyle(color:Colors.black),),
                trailing:Text(shoppingList[index].productQuantity,style:TextStyle(color:Colors.black),),
              );
            },
            itemCount:shoppingList.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}
