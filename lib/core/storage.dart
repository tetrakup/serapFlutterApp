import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/payment_card.dart';

class Storage {
  Future<bool> isFirstLaunch() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    final runned = storage.getBool("runned");
    if (runned == null) {
      await storage.setBool("runned", true);
      return true;
    } else {
      return false;
    }
  }

  setConfig({String? language, bool? darkMode}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    if (language != null) {
      await storage.setString("language", language);
    }
    if (darkMode != null) {
      await storage.setBool("darkMode", darkMode);
    }
  }

  getConfig() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    return {
      "language": storage.getString("language"),
      "darkMode": storage.getBool("darkMode"),
    };
  }

  Future<List<PaymentCard>> loadCards() async {
    const storage = FlutterSecureStorage();
    final cards = await storage.read(key: "paymentCards");
    if (cards != null) {
      final temp = jsonDecode(cards);
      List<PaymentCard> cardList = [];
      for (var i = 0; i < temp.length; i++) {
        cardList.add(PaymentCard.fromJson(jsonDecode(temp[i])));
      }
      return cardList;
    } else {
      return [];
    }
  }

  saveCards(List<PaymentCard> cards) async {
    const storage = FlutterSecureStorage();
    List<String> cardsString = [];
    for (var i = 0; i < cards.length; i++) {
      cardsString.add(jsonEncode(cards[i].toJson()));
    }
    await storage.write(key: "paymentCards", value: jsonEncode(cardsString));
  }

  clearStorage() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();
  }
}
