import 'package:app_geladeira/android/widgets/home/favorite-item.widget.dart';
import 'package:flutter/material.dart';

class FavoritosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1),
                      ),
                    ),
                    child: Text('Favoritos'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavoriteItemWidget(),
              FavoriteItemWidget(),
              FavoriteItemWidget(),
              FavoriteItemWidget(),
              FavoriteItemWidget(),
            ],
          ),
        )
      ],
    );
  }
}
