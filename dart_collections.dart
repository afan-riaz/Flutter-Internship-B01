void main(){
  //Create List of integers and demonstrate add, remove, insert
  List<int> no=[1,2,3,4,5];
  no.add(5);
  no.remove(4);
  no.insert(0, 3);
  print(no);


  //Create Set and show unique elements
  Set<int> sets={1,2,5,3,4};
  print("Set numbers are: $sets");


  //Map with key-value pairs
  Map<String,dynamic> map={
    "name":"Afan",
    "age":19,
    "Gender":"Male",
    "Class":"BS SE",
  };
  print(map);


  //list.map() to transform data
  List<int> numbers=[1,2,3,4];
  List<String> square=numbers.map((n){
    return "value is $n";
  }).toList();
  print(square);

  //list.where() for filtering
  List<int> num=numbers.where((x){
    return x>2;
  }).toList();
  print(num);


  //Implement list.reduce() for sum
  int division=numbers.reduce((a,b){
    return a~/b;
  });
  print("Division of list numbers is: $division");

  //Create List<Map<String, dynamic>> for students
  //Add 5 student records
  //Sort by marks descending

  List<Map<String,dynamic>> students=[{
    "name":"Afan",
    "age":19,
    "Gender":"Male",
    "Class":"BS SE",
    "marks":80
  },
    {
      "name":"Mehran",
      "age":21,
      "Gender":"Male",
      "Class":"BS CY",
      "marks":84
    },
    {
      "name":"Sabeen",
      "age":23,
      "Gender":"Female",
      "Class":"CA",
      "marks":90
    },
    {
      "name":"Nida",
      "age":20,
      "Gender":"Female",
      "Class":"BS AI",
      "marks":78
    },
    {
      "name":"Farooq",
      "age":17,
      "Gender":"Male",
      "Class":"HSSC",
      "marks":45
    }];
  students.sort((a,b){
    return a["marks"].compareTo(b["marks"]);
  });
  for(var student in students){
    print(student);
  }

  //Filter students with marks > 75
  var filter=students.where((a){
    return a["marks"]>75;
  });
  print("\n\n");
  for(var student in filter){
    print("$student");
  }



  //Search student by name
 var searched= students.where((n){
    return n["name"]=="Afan";
  });
  print("detail of searched student is : $searched");
}