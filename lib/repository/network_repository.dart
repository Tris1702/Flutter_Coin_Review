import 'package:dio_project/models/coin_detail.dart';

import '../models/coin.dart';

abstract class NetworkRepository {
  Future<List<Coin>?> getListCoins();
  Future<CoinDetail?> getCoinById(String coinId);
}
