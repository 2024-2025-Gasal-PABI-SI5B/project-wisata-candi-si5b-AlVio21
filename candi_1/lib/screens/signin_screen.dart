import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget{
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // TODO 1 dekrasikan variabel yang dibutuhkan 
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   // TODO 2 pasang appbar 
   appBar: AppBar(
    title: const Text('Sign In'),
   ),
   // TODO 3 PASANG BODY 
   body: Center(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            // TODO 4 atur mainAxisAlignment dan crossAxixAligment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        
            children: [
              // TODO 5 buat textformfield untuk namapengguna
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Pengguna',
                    hintText: 'Masukan Nama Pengguna',
                    border: OutlineInputBorder()
                  ),
                ),
              // TODO 6 buat textFormfield untuk kata sandi 
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  hintText: 'Masukan Kata Sandi',
                  border: const OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  }, 
                  icon: Icon(
                    
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    
                  ),
                  ),
        
        
                  ),
                  obscureText: _obscurePassword,
                     
                ),
        
              
        
        
        
        
              //  TODO 7 buat elevatedButton untuk sign in 
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){}, child: const Text('Sign In')
                ),
                // TODO 8 pasang teks button untuk sign up  
                const SizedBox(height: 10,),
                // TextButton(
                //   onPressed: (){}, child: Text('Belum punya akun? Daftar di sini.')
                //   ),
                RichText(
                  text: TextSpan(
                    text: 'Belum Punya Akun? ',
                    style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children:[
                      TextSpan(
                      text: 'Daftar di sini.',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
        
                    )
                  ],
                )
                  
                  ),
            ],
          )),
      ),
    ),
   ),

   );

  }
}