import 'package:dio_project/base/bloc_base.dart';
import 'package:dio_project/models/coin_detail.dart';
import 'package:rxdart/rxdart.dart';

class CoinDetailBloc extends BlocBase {
  @override
  void dispose() {
    coin.close();
  }

  @override
  void init() {
  }

  BehaviorSubject<CoinDetail?> coin = BehaviorSubject.seeded(null);
  Stream<CoinDetail?> get coinStream => coin.stream;
  Sink<CoinDetail?> get coinSink => coin.sink;

  void getCoinDetail(String coinId) async {
    coin.add(await networkRepo.getCoinById(coinId));
  }
}
