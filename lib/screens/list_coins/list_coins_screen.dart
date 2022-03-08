import 'package:dio_project/models/coin_detail.dart';
import 'package:dio_project/screens/coin_detail/coin_detail_screen.dart';
import 'package:dio_project/screens/list_coins/list_coin_bloc.dart';
import 'package:flutter/material.dart';

import '../../models/coin.dart';

class ListCoinsScreen extends StatelessWidget {
  const ListCoinsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ListCoinBloc bloc = ListCoinBloc();
    bloc.init();
    return Scaffold(
      body: StreamBuilder(
        stream: bloc.coinsStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          } else {
            var listCoins = snapshot.data! as List<Coin>;
            return ListView.builder(
                itemCount: listCoins.length,
                itemBuilder: (context, index) {
                  return itemWidget(listCoins[index], context);
                });
          }
        },
      ),
    );
  }

  Widget itemWidget(Coin coin, context) {
    return ListTile(
      title: Text(coin.name.toString()),
      subtitle: Text(coin.symbol.toString()),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CoinDetailScreen(coinId: coin.id.toString()),
        ),
      ),
    );
  }
}
