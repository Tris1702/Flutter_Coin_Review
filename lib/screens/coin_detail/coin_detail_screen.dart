import 'package:dio_project/models/coin_detail.dart';
import 'package:dio_project/screens/coin_detail/coin_detail_bloc.dart';
import 'package:flutter/material.dart';

class CoinDetailScreen extends StatelessWidget {
  final String coinId;
  const CoinDetailScreen({Key? key, required this.coinId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = CoinDetailBloc();
    bloc.getCoinDetail(coinId);
    return Scaffold(
      body: StreamBuilder(
        stream: bloc.coinStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          } else {
            var coin = snapshot.data! as CoinDetail;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      coinTitle(coin.name!),
                      activeText(coin.isActive!),
                    ],
                  ),
                  Text(coin.description!),
                  const Text(
                    'Tags',
                    style: TextStyle(fontSize: 24),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: coin.tags!.map((e) => itemTag(e.name!)).toList(),
                  ),
                  const Text(
                    'Team Members',
                    style: TextStyle(fontSize: 24),
                  ),
                  Column(
                    children: coin.team!
                        .map((e) => itemTeam(e.name!, e.position!))
                        .toList(),
                  )
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton:
          FloatingActionButton.small(onPressed: () => Navigator.pop(context)),
    );
  }

  Widget itemTeam(String name, String position) {
    return ListTile(
      title: Text(name),
      subtitle: Text(position),
    );
  }

  Widget coinTitle(String name) {
    return Text(
      name,
      style: const TextStyle(fontSize: 24),
    );
  }

  Widget activeText(bool isActive) {
    return isActive
        ? const Text(
            'active',
            style: TextStyle(color: Colors.green),
          )
        : const Text(
            'inactive',
            style: TextStyle(color: Colors.red),
          );
  }

  Widget itemTag(String tagName) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Text(tagName),
    );
  }
}
