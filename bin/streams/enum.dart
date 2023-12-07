


// enum Day {
//   monday,
//   tuesday,
//   wednesday,
//   thursday,
//   friday,
//   saturday,
//   sunday,
// }

// void main() {
//   Day today = Day.friday;

//   print(today); // Output: Day.wednesday

//   if (today == Day.wednesday || today == Day.saturday) {
//     print('It\'s the weekend!');
//   } else {
//     print('It\'s a weekday.');
//   }
// }


enum Status {
  success,
  error,
  loading,
}

class ApiResponse {
  final Status status;
  final String message;

  ApiResponse(this.status, this.message);
}

void main() {
  ApiResponse response = ApiResponse(Status.success, 'Data fetched successfully');

  switch (response.status) {
    case Status.success:
      print('Success: ${response.message}');
      break;
    case Status.error:
      print('Error: ${response.message}');
      break;
    case Status.loading:
      print('Loading: ${response.message}');
      break;
  }
}


// enum MyEnum {
//   value1,
//   value2,
//   value3,
// }

// class MyMixin {
//   final int mixinVariable;

//   const MyMixin(this.mixinVariable);
// }

// class EnumWithMixin extends MyEnum with MyMixin {
//   const EnumWithMixin._(MyEnum enumValue, int mixinVariable)
//       : super(mixinVariable);

//   static const EnumWithMixin value4 = EnumWithMixin._(MyEnum.value1, 42);
//   static const EnumWithMixin value5 = EnumWithMixin._(MyEnum.value2, 27);
// }

// void main() {
//   MyEnum enumValue = MyEnum.value1;
//   EnumWithMixin enumWithMixin = EnumWithMixin.value4;

//   print(enumValue); // Output: MyEnum.value1
//   print(enumWithMixin); // Output: EnumWithMixin._(MyEnum.value1, 42)
// }