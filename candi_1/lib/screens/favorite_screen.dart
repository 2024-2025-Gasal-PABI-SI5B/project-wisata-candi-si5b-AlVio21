import 'package:flutter/material.dart';
import 'package:candi_1/models/candi.dart';
import 'package:candi_1/screens/detail_screen.dart';
import 'package:candi_1/data/candi_data.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Candi> favoriteHomes = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  void _loadFavorites() {
    List<Candi> favorites = candiList.where((candi) => candi.isFavorite).toList();
    setState(() {
      favoriteHomes = favorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: favoriteHomes.isEmpty
          ? const Center(
              child: Text('Tidak ada candi favorit'),
            )
          : ListView.builder(
              itemCount: favoriteHomes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      favoriteHomes[index].imageAsset,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(favoriteHomes[index].name),
                  subtitle: Text(favoriteHomes[index].location),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(candi: favoriteHomes[index]),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}