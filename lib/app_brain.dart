import 'qestion.dart';

class AppBrain {
  int _qestionNumber = 0; // next qestoins
  List<Qestion> _qestionGrup = [
    Qestion(
      q: "عدد الكواكب في المجموعه الشمسيه هو ثمانية كواكب",
      i: "images/image-1.jpg",
      a: true,
    ),
    Qestion(
      q: "القط هي حيونات لاحمه ",
      i: "images/image-2.jpg",
      a: true,
    ),
    Qestion(
      q: "الصين موجوده في القاره الافرقيه ",
      i: "images/image-3.jpg",
      a: false,
    ),
    Qestion(
      q: "الارض مسطه وليست كرويه ",
      i: "images/image-4.jpg",
      a: false,
    ),
  ];
  void nextQuestion() {
    if (_qestionNumber < _qestionGrup.length - 1) {
      _qestionNumber++;
    }
  }

  String getQusetionText() {
    return _qestionGrup[_qestionNumber].qestionText;
  }

  String getQusetionImage() {
    return _qestionGrup[_qestionNumber].qestionImage;
  }

  bool getQusetionAnswer() {
    return _qestionGrup[_qestionNumber].qestionAnwser;
  }

  bool isFinshed() {
    if (_qestionNumber >= _qestionGrup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _qestionNumber = 0;
  }
}
