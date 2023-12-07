
// single level inheritance

// class Person{
//   void showName(String name){
//     print(name);
//   }

//   void showAge(int age){
//     print(age);
//   }
// }

// class Jay extends Person {}

// main(){
//   var jay = new Jay();

//   jay.showName("JD");
//   jay.showAge(20);
// }



// multilevel inheritance
class Person {
  void showName(String name) {
    print(name);
  }

  void showAge(int age) {
    print(age);
  }
}

class Jay extends Person {
  void showProfession(String profession) {
    print(profession);
  }

  void showNationality(String nationality) {
    print(nationality);
  }
}
//Derived class created from another derived class.
class Sanket extends Jay {} 

main() {
  var sanket = new Sanket();

  sanket.showName("Sanket");
  sanket.showAge(20);
  sanket.showNationality("Indian");
  sanket.showProfession("Engineer");
}
