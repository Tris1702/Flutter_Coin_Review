import 'package:dio_project/base/bloc_base.dart';
import 'package:rxdart/rxdart.dart';

import '../../models/coin.dart';

class ListCoinBloc extends BlocBase {
  @override
  void dispose() {
    coins.close();
  }

  @override
  void init() {
    updateListCoins();
  }

  BehaviorSubject<List<Coin>?> coins =
      BehaviorSubject.seeded(List<Coin>.empty());
  Stream<List<Coin>?> get coinsStream => coins.stream;
  Sink<List<Coin>?> get coinsSink => coins.sink;

  void updateListCoins() async {
    print('updating');
    coins.add(await networkRepo.getListCoins());
    print('updated');
  }
}
