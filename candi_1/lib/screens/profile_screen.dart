import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget{
  const ProfilScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen>{
  // todo: 1 dekrasikan variabel yang dibutuhkan 
  bool isSigneIn = false;
  String fulName = '';
  String userName = '';
  int favoriteCandiCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO : 2 bagian profil hearder (ISINYA GAMBAR POFIL)
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                        shape: BoxShape.circle
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/placeholder_image.png'),
                      ),

                    )
                  ],
                )
                // TODO : 3 BUAT BAGIAN PROFIL INFO (ISINYA INFO PROFIL)
                // TODO : 4 buat bagian profil action (isinya tombol signin/ signput)
              ],
            ),
          )
        ],
      ),
    );
    
  }
}