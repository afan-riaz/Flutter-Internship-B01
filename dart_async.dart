import 'dart:async';
import 'dart:ffi';

Future<String> fetchUserData() async{
  print("Fetching Data...");
  await Future.delayed(Duration(seconds: 2));
  return "Hello my name is Afan Riaz I am from AJK";

}
Future<String> userName() async{
  await Future.delayed(Duration(seconds: 2));
  return "Afan Riaz";
}
Future<String> designation() async{
  await Future.delayed(Duration(seconds: 2));
  return "Senior Software Engineer";
}
Future<String> salary() async{
  await Future.delayed(Duration(seconds: 1));
  return "100,000\$";
}


Stream<int> counterStream(int max) async*{
  for(int i=0;i<=max;i++){
    await Future.delayed(Duration(seconds: 2));
    if(i==4) {
      await Stream.error("error occur while loading 4");
      break;
    } else
      print(i);
  }
}

void manualStreamController() {
  final controller=StreamController<int>();
  controller.sink.add(3);
  controller.sink.add(1);
  controller.sink.add(2);

  controller.sink.addError("manual error is added ");
  controller.stream.listen(
      (data)=> print("controller data: $data"),
    onError: (err)=>print("Unexpected error occur"),
    onDone:()=> print("Stream ended successfully"),
  );
  controller.close();

}
void streamTransformation() async{
  final Stream<int> rawNumbers=Stream.fromIterable([1,2,3,4,5]);
  final processedStream=rawNumbers
  .where((num)=>num%2==0)
  .map((data)=> "Number is: $data")
  .distinct();

  print("Starting Stream process");
  await for(var number in processedStream){
    print(number);
  }
}
void main() async{
  try{
    final userData=await fetchUserData();
    print(userData);
  }
  catch(e){
    print(e);
  }
  try{
    final details=await Future.wait([
      userName(),
      designation(),
      salary()
    ]);
    print(details);
  }
  catch(e){
    print(e);
  }
  try{
    await for(var count in counterStream(5)){
      print(count);
    }

  }
  catch(e){
    print(e);
  }
  manualStreamController();
  streamTransformation();
}