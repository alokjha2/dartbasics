
void main(){

Map<String, int> map1 = {'zero': 0, 'one': 1, 'two': 2};
print(map1);  // Set breakpoint here

Map map2 = {'zero': 0, 'I': 'one', 10: 'X'};
print(map2);  // Set breakpoint here

var map3 = {'zero': 0, 'I': 'one', 10: 'X'};
print(map3);  // Set breakpoint here



Map<String, int> map5 = {'zero': 0, 'one': 1, 'two': 2};

// Map map6 = Map.from(map5);

// Map.from
Map map6 = Map.from(map5);
print(map6);

// Map.of
Map map7 = Map.of(map6);
print(map7);

// Create a new Map from the given keys and values using fromIterables().

// Map.fromIterables is a constructor for creating a map from two iterable collections—one representing keys and the other representing values. 
// This constructor takes two iterables as arguments and pairs elements from the two iterables to create key-value pairs in the resulting map.

List<String> letters = ['I', 'V', 'X'];
List<int> numbers = [1, 5, 10];

Map<String, int> map = Map.fromIterables(letters, numbers);
print(map);


// Create a new Map from the given keys and values using fromIterable().

List<int> numbers1 = [1, 2, 3];

Map<String, int> map10 = Map.fromIterable(
  numbers1,
  key: (k) => 'double ' + k.toString(),
  value: (v) => v * 2);

print(map10);


// Create a ‘const’ Map using unmodifiable() constructor.

Map map11 = Map.unmodifiable({1: 'one', 2: 'two'});
print(map11);
// {1: one, 2: two}

// map11[3] = 'three';



// Add item to a Map
// There are 2 way to add an item (key-value pair) to a Map:

// using square brackets []
// calling putIfAbsent() method
Map map12 = {1: 'one', 2: 'two'};

map12[3] = 'three';
print(map);

map12.putIfAbsent(4, () => 'four');
print(map);

var threeValue = map12.putIfAbsent(3, () => 'THREE');
print(map);
print(threeValue); // the value associated to key, if there is one


// Map update value by key
// The examples show you how to update a Map value using:

// square brackets []
// update() method
// update() method with ifAbsent to add a new object/entry if the input key is absent
// Map map = {1: 'one', 2: 'two'};
// map[1] = 'ONE';
// print(map);
// map.update(2, (v) {
//   print('old value before update: ' + v);
//   return 'TWO';
// });
// print(map);
// map.update(3, (v) => 'THREE', ifAbsent: () => 'addedThree');
// print(map);
}