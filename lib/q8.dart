void getDistinctNumbers(List<int> numbers) {
  int distinctCount = 0;
  for (int i = 0; i < numbers.length; i++) {
    bool isFirstTime = true;
    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        isFirstTime = false;
        break;
      }
    }
    if (isFirstTime) {
      distinctCount++;
    }
  }

  print("The number of distinct number is $distinctCount");

  String output = "The distinct numbers are:";
  for (int i = 0; i < numbers.length; i++) {
    bool isFirstTime = true;
    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        isFirstTime = false;
        break;
      }
    }
    if (isFirstTime) {
      output += " ${numbers[i]}";
    }
  }
  
  print(output);
}

void main() {
  List<int> myArray = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2];
  print(myArray);
  getDistinctNumbers(myArray);
}