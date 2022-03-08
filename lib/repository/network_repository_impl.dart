import 'dart:convert';

import 'package:dio_project/models/coin.dart';
import 'package:dio_project/repository/network_repository.dart';
import 'package:dio_project/service/network_service.dart';
import 'package:get_it/get_it.dart';

import '../models/coin_detail.dart';

class NetworkRepositoryImpl extends NetworkRepository {
  var dio = GetIt.I<NetworkService>().dio;
  static const String coins = 'coins';

  @override
  Future<CoinDetail?> getCoinById(String coinId) async {
    try {
      var response = await dio.get(coins + '/' + coinId);
      CoinDetail coin = CoinDetail.fromJson(response.data);
      return coin;
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<Coin>?> getListCoins() async {
    try {
      var response = await dio.get(coins);
      List<Coin> listCoin =
          (response.data as List).map((i) => Coin.fromJson(i)).toList();
      return listCoin;
    } catch (e) {
      print(e);
    }
  }
}
