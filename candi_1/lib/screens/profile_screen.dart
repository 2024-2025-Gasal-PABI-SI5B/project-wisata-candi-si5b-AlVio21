import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget{
  const ProfilScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen>{
  // todo: 1 dekrasikan variabel yang dibutuhkan 
  bool isSigneIn = false;
  String fullName = 'Alfredo Kristian';
  String userName = 'fredo';
  int favoriteCandiCount = 0;

  // TODO: 5 implementasi fungsi Sign in
  void signIn(){
    setState(() {
      isSigneIn = !isSigneIn;

    });
  }
  // TODO : 6 implementasi fungsi SignOut
  void signOut(){
    setState(() {
      isSigneIn = !isSigneIn;
    });
  }
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                            shape: BoxShape.circle
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                    
                        ),
                        if(isSigneIn)
                          IconButton(onPressed: (){}, 
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50]))
                    
                      ],
                    ),
                  ),
                ),
                // TODO : 3 BUAT BAGIAN PROFIL INFO (ISINYA INFO PROFIL)
                // baris 1 profil info 
                const SizedBox(height: 20,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber,),
                          const SizedBox(width: 8,),
                          Text(
                            'Pengguna', 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                        ],
                      ),
                    ),
                    Expanded(child: Text(
                      ': $userName',
                    style: TextStyle(fontSize: 18),
                    ),
                    )
                  ],
                ),
                // barris 2 nama 
                const SizedBox(height: 20,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue,),
                          const SizedBox(width: 8,),
                          Text(
                            'Nama', 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                        ],
                      ),
                    ),
                    Expanded(child: Text(
                      ': $fullName',
                    style: TextStyle(fontSize: 18),
                      )),
                      if(isSigneIn) const Icon(Icons.edit),
                    

                  ],
                ),
                // 3 favorit 
                const SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: const Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red,),
                          const SizedBox(width: 8,),
                          Text(
                            'Favorit', 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                        ],
                      ),
                    ),
                    Expanded(child: Text(
                      ': $favoriteCandiCount',
                    style: TextStyle(fontSize: 18),
                    ),
                    )
                  ],
                ),


                // TODO : 4 buat bagian profil action (isinya tombol signin/ signput)
                const SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                const SizedBox(
                  height: 20,
                ),
                isSigneIn 
                ? TextButton(onPressed: signOut, child: Text('Sign Out'))
                  : TextButton(onPressed: signIn, child: const Text('Sign In'))

              ],
            ),
          )
        ],
      ),
    );
    
  }
}