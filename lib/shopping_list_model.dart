import 'package:flutter/material.dart';

class ShoppingListModel{
  String productTitle;
  String productQuantity;
  bool checkColor;
  bool activeColor;
  bool isChecked;
  ShoppingListModel({required this.productTitle,required this.productQuantity,required this.activeColor,required this.checkColor,required this.isChecked});

  static List<ShoppingListModel> getShoppingList(){
    return <ShoppingListModel>[
      ShoppingListModel(
        productTitle:'Wholegrain Wrap',
        productQuantity: '1 pack',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Bacon',
        productQuantity: '100g',
        activeColor:false,
        checkColor:false,
        isChecked: true,

      ),
      ShoppingListModel(
        productTitle:'Avocado',
        productQuantity: '1',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Tomato Relish',
        productQuantity: '1',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Brown Onion',
        productQuantity: '500g',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'White Basmati Rice',
        productQuantity: '1kg',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Ginger',
        productQuantity: '10g',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Tomato',
        productQuantity: '1kg',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Ground Beef',
        productQuantity: '1kg',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Prawn(peeled)',
        productQuantity: '300g',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
      ShoppingListModel(
        productTitle:'Sesame Oil',
        productQuantity: '1 bottle',
        activeColor:false,
        checkColor:false,
        isChecked: true,
      ),
    ];
  }
}