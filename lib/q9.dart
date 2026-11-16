void CountGeneral(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    bool isFirstTime = true;
    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        isFirstTime = false;
        break;
      }
    }
    
    if (isFirstTime) {
      int count = 0;
      for (int k = 0; k < numbers.length; k++) {
        if (numbers[k] == numbers[i]) {
          count++;
        }
      }
      print("${numbers[i]}->$count");
    }
  }
}

void main() {
  List<int> myArray = [1, 2, 3, 1, 3, 6];
  CountGeneral(myArray);
}