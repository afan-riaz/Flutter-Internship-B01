// User class with private _name, _email
import 'dart:ffi';

class User{
  String _name;
  String _email;


  //Add named constructor User.withDetails()
  User.withDetail(this._name, this._email);


  // User class with private _name, _email
  String get name{
    return _name;
  }
  set name(String value){
    _name=value;
  }
  String get email{
    return _email;
  }
  set email(String value){
    _email=value;
  }
}


//Create Admin class extending User
class Admin extends User{
  String _role;
  Admin(String name, String email,this._role)
    :super.withDetail(name, email);
  String get role{
    return _role;
  }
  set role(String value){
    _role=value;
  }
  //Override toString() method
  @override
    String toString()=> "Admin{name: $name, email: $email,post: $role";
}
abstract class Animal{
  void makeSound(){
    print("Animal make sound");
}

}class dog implements Animal{
  @override
  void makeSound() {
    print("Dog barks");
  }
}
class cat implements Animal{
  @override
  void makeSound() {
    print("Cat meow");
  }
}


class Product{
  String name;
  double price;
  Product(this.name,this.price);
}
class ShoppingCart{
  List<Product> products=[];
  void addProducts(Product product){
    products.add(product);
  }
  void removeProduct(Product product){
    products.remove(product);
  }
  void showProduct(){
    for(var product in products){
      print("${product.name} - ${product.price}");
    }
  }

  double calculateTotal(List<Product> products) {
    double sum = 0;
    for (var product in products) {
      sum += product.price;
    }
    return sum;
  }
}
void main(){
  Admin admin=Admin("Afan", "afanriaz202@gmail.com", "Senior Admin");
  print(admin);
  Animal animal=dog();
  animal.makeSound();
  animal=cat();
  animal.makeSound();

  ShoppingCart shoppingCart=ShoppingCart();
  Product p1=Product("dall", 120);
  shoppingCart.addProducts(p1);

  Product p2=Product("sabzi", 200);
  shoppingCart.addProducts(p2);
  shoppingCart.showProduct();
  shoppingCart.removeProduct(p1);

  shoppingCart.calculateTotal(shoppingCart.products);
}