import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List _favName = [];
  List _favImg=[];
  List _favEmail=[];
  List _favNumber=[];
  List get favoriteName => _favName;
  List get favoriteImage => _favImg;
  List get favoriteUnit => _favEmail;
  List get favoritePrice => _favNumber;

  void favorites(String name,String image,String email,int number) {
    final favNameList = _favName.contains(name);
    final favImgList = _favImg.contains(image);
    final favUnitList = _favEmail.contains(email);
    final favPriceList = _favNumber.contains(number);


    if (favNameList) {
      _favName.remove(name);
      _favImg.remove(image);
      _favNumber.remove(number);




    } else {
      _favName.add(name);
      _favImg.add(image);
      _favNumber.add(number);

    }

    notifyListeners();
  }

  bool icn_change(String icnName) {
    final favIcn = _favName.contains(icnName);
    return favIcn;
  }
}
