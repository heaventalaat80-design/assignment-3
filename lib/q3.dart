void containsValue(List<int> numbers, int target) {
  bool found = false;
  
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      found = true;
      break; 
    }
  }
  
  if (found) {
    print("Yes");
  } else {
    print("No");
  }
}

void main() {
  var myArray = [8, 0, 1, 5];
  print(myArray);
  containsValue(myArray, 1);
  }