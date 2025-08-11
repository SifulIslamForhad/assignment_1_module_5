

main(){
  print('');

  List<dynamic> fruits = [
    { 'name':'Apple', 'color':'red', 'price': 200.0 },
    { 'name':'Apple', 'color':'red', 'price': 95.99 },
    { 'name':'Apple', 'color':'red', 'price': 95.99 },
    { 'name':'Apple', 'color':'red', 'price': 95.99 },
    { 'name':'Apple', 'color':'red', 'price': 95.99 },
  ];


  print('Display fruits list before discount:');
  fruits_desplay(fruits);
  print('');


  print('Display fruits list after discount:');
  fruits_discoun(fruits, 15);
  fruits_desplay(fruits);

}

void fruits_desplay( List<dynamic> fruits ){
  for(var fruit in fruits){
    print("Namr: ${fruit['name']}, Color: ${fruit['color']}, Price: ${fruit['price']}");
  }
}


void fruits_discoun( List<dynamic> fruits, double percent ){
  for(var fruit in fruits){

    double orginal = fruit['price'];
    double descount = orginal * ( percent / 100 );
    fruit['price'] = orginal - descount;

  }
}

    /*  --Question

    Consider a Dart program managing a list of fruits. Each fruit has attributes
    like name, color, and price.
    Create a Dart list named fruits with at least three fruits, represented as maps.

    Write a function displayFruitDetails that takes the fruits list as a parameter and
    prints out the details of each fruit.

    Implement a function applyPriceDiscount() that takes the fruits list and a
    discount percentage as parameters. This function should update the price of
    each fruit by applying the discount.





    List<> fruits




     */









