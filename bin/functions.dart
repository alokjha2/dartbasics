void main(){
  racingCars();
  first();
  second("no");
  String number = third();
  print(number);

}

void racingCars(){

  print("hello I have merceds"); 
}

// types of function
// 1. No Parameter and No Return Type:
void first(){
  print("no parameter, no result");
}

// 2. Parameter and No Return Type: 
void second(String name){
  print("parameter and $name return type");

}

// 3. No Parameter and Return Type
third(){
  return "third";
}

