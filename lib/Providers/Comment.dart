import 'package:flutter/widgets.dart';

class Comment extends ChangeNotifier {
  List c = [];
  bool CheckComment = true;
  bool Checkreplay = true;
  bool CheckLike = false;
  bool ShowReplay = false;

  void toggleCheckbox() {
    CheckComment = !CheckComment;
    notifyListeners();
  }

  void togglecheckreplay() {
    Checkreplay = !Checkreplay;
    notifyListeners();
  }

  void togglechecklike() {
    CheckLike = !CheckLike;

    notifyListeners();
  }

  void togglecheckshowreplay() {
    ShowReplay = !ShowReplay;
    notifyListeners();
  }

  List get getcmt => c;
  addComment(cmtval) {
    c.add([cmtval, []]);
    notifyListeners();
  }

  List get getreply => c;
  addReplay(repval, rplyIndex) {
    c[rplyIndex][1].add(repval);
    notifyListeners();
  }
}
