//is prime function
bool isPrime(int n){
  for(int i=2;i<=n~/2;i++){
    if(i%n==0){
      return false;
    }
  }
  return true;
}



//factorial using recursion
int factorial(int n){
  if(n==0||n==1){
    return 1;
  }
  return n*factorial(n-1);
}


//sum function
int sum(int a,int b){
  return a+b;
}
void main() {
  //Value of a variable can be changed
  var x = 10;
  x = 10 + 5;
  print("$x is a variable");

  //value of a final variable cannot be changed but at runtime
  final y = DateTime.now();
  print("$y is a final variable");

  //value of a const variable cannot be changed and is compile-time constant
  const z = 3.14;
  print("$z is a constant variable and cannot be changed");

  //Now moving toward data types
  //int
  int a = 20;
  print("$a is an integer");

  //double
  double b = 23.3;
  print("$b is a double");

  //String
  String name = "Afan Riaz";
  print("$name is a string");

  //boolean
  bool isTrue = true;
  print("$isTrue is a boolean");

  //now moving toward conditional statements
  if (name == "Afan Riaz") {
    print("Name is correct");
  } else {
    print("Authentication failed");
  }

  //moving toward loops
  //for loop
  for (int i = 0; i < 5; i++) {
    print("Yes I got it");
  }

  //while loop
  while(true){
    print("Hello sir");
    break;
  }


  //sum of two numbers using sum function
  sum(10, 13);
  print("factorial of 5 is ${factorial(5)}");

  //implementing is prime function

  print("prime numbers b/w 1 and 50 are");
  if(isPrime(10)) {
    print("the number 10 is prime");
  }
  else{
    print("The number 10 is not prime");
  }
}
