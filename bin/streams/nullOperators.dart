
late String lateInitializedString;

void main(){

  // !
  String? nullableString = "Hello";
  String nonNullableString = nullableString;

print(nonNullableString); // Output: Hello

// ?
String? nullableString1 = null;
int? length = nullableString1?.length;

print(length); // Output: null

// ??
String? nullableString3= null;
String nonNullableString3 = nullableString3 ?? "Default value";

print(nonNullableString3); // Output: Default value

lateInitializedString = "Hello";

  print(lateInitializedString); // Output: Hello



}