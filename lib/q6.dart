void analyzeScores(List<int> scores) {
  int sum = 0;
  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }

  double average = sum / scores.length;

  int aboveCount = 0;
  int belowCount = 0;
  int equalCount = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > average) {
      aboveCount++;
    } else if (scores[i] < average) {
      belowCount++;
    } else {
      equalCount++;
    }
  }

  print("Above average:$aboveCount");
  print("Below average:$belowCount");
  print("Equal average:$equalCount");
}

void main() {
  List<int> scores = [8, 5, 1, 3];
  print(scores);
  analyzeScores(scores);
}