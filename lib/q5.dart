void assignGrades(List<int> scores) {
  int bestScore = scores[0];
  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > bestScore) {
      bestScore = scores[i];
    }
  }

  for (int i = 0; i < scores.length; i++) {
    int score = scores[i];
    String grade;

    if (score >= bestScore - 10) {
      grade = 'A';
    } else if (score >= bestScore - 20) {
      grade = 'B';
    } else if (score >= bestScore - 30) {
      grade = 'C';
    } else if (score >= bestScore - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print("Student ${i + 1} score is $score and grade is $grade");
  }
}

void main() {
  List<int> studentScores = [40, 55, 70, 58];
  print(studentScores);
  assignGrades(studentScores);
}