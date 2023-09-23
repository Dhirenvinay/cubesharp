import 'package:cubeassignment/home.dart';
import 'package:flutter/material.dart';
class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  TextEditingController _passController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.transparent,
       body: SingleChildScrollView(
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              const  SizedBox(height: 25,),
                const Text("Enter Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passController,
                  keyboardType: TextInputType.text,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    hintText: "Password",
                    //labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ),
                    fillColor: Colors.grey,
                    filled: true,
                  ),
                ),
                const SizedBox(height: 15,),

                const Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgot Password?",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 30,),
                Center(
                  child: InkWell(

                    onTap: () {
                      print("Input: ${_passController.text}");
                      if (_passController.text.trim() != "test@78563") {
                        final snackBar = SnackBar(
                          content: const Text("Enter Correct Password"),
                          duration: const Duration(seconds: 2),
                          action: SnackBarAction(
                            label: 'Action',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        print("Working");

                      } else {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()));

                      }
                    },

                    splashColor: Colors.blue,
                    child: Container(
                      height: MediaQuery.of(context).size.height/15,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent

                      ),
                      child: const Center(child: Text("Verify Password",style: TextStyle( fontSize: 20,color: Colors.white),)),
                      //),
                    ),
                  ),
                ),
              ],
            ),
          ),
    ),
       ),
     );
  }
}
