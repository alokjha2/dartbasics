





void main(List<String> args){

  final double  doubleValue = eitherIntOrDouble(WhatToReturn.double) as double;
  print(doubleValue);


  final int  intValue = eitherIntOrDouble(WhatToReturn.int) as int;
  print(intValue);


  // final hello = "hello";
}

enum WhatToReturn {int, double}

num eitherIntOrDouble(WhatToReturn whatToReturn){
  switch (whatToReturn){
    case WhatToReturn.int:
    return 1;


    case WhatToReturn.double:
    return 1.0;

    // default: 
    // return 1;

  }
}