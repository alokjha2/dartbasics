



abstract class AbstractClass {
  // Abstract method without a body
  void abstractMethod();
  
  // Non-abstract method
  void normalMethod() {
    // Method implementation
  }
}

// Normal class
class NormalClass {
  // Method implementation
  void someMethod() {
    // Method implementation
  }
}


// Subclass inheriting from an abstract class
class SubClass extends AbstractClass {
  // Implementing the abstract method
  @override
  void abstractMethod() {
    // Method implementation
  }
}

void main() {
  // Creating objects of normal classes
  NormalClass normalObj = NormalClass();
  
  // Creating objects of subclasses
  SubClass subObj = SubClass();
  
  // Instantiating normal class object
  // normalObj.normalMethod();
  
  // Calling abstract method through subclass object
  subObj.abstractMethod();
  subObj.normalMethod();
  
  // Creating objects of abstract class (not allowed)
  // AbstractClass abstractObj = AbstractClass(); // Error: Cannot instantiate abstract class
}