class TaskBrain {
  int length;
  int read;
  int drink;
  int call;
  int cash;
  int coding;
  int study;
  TaskBrain(this.coding, this.cash, this.call, this.drink, this.read,
      this.length, this.study);
  double _taskdone = 0;
  int bmiResult = 1;
  int sum = 0;

  int calculateTaskDone() {
    _taskdone = length / read + drink + call + cash + coding + study;
    return _taskdone.toInt();
  }

  // String bmiResult() {
  //   if (_taskdone >= 25) {
  //     return 'Overweight';
  //   } else if (_taskdone > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'Underweight';
  //   }
  // }

  getInterpretation() {
    if (_taskdone >= 25) {
      return 'you have higher than normal body weight. Try to exercise more';
    } else if (_taskdone >= 18.5) {
      return 'you have normal body weight. Good job';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
