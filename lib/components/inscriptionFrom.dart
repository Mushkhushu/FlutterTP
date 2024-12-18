import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InscriptionForm extends StatefulWidget {
  const InscriptionForm({super.key});

  @override
  State<InscriptionForm> createState() => _InscriptionFormState();
}

class _InscriptionFormState extends State<InscriptionForm> {
  String name = "";
  String password = "";
  bool rememberMe = false;

  var formKey = GlobalKey<FormState>();

  String? validateName(value) {
    if (value == null || value.trim().isEmpty) {
      return "Veuillez remplir ce champ.";
    }
    if (!EmailValidator.validate(value)) {
      return "Ceci n'est pas une adresse mail.";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return "Veuillez remplir ce champ.";
    }
    if (value.length <= 2) {
      return "Votre mot de passe doit avoir au moins 3 caractères.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Connexion à FoTwitter :",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: validateName,
                  onSaved: (value) {
                    if (value != null) {
                      name = value;
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: "Identifiant :",
                    hintText: "johnDoe",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: validatePassword,
                  onSaved: (value) {
                    if (value != null) {
                      password = value;
                    }
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Mot de passe :",
                    hintText: "1234",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text("Se souvenir de mes informations ?"),
                    Switch(
                      value: rememberMe,
                      onChanged: (isChecked) {
                        setState(() {
                          rememberMe = isChecked;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        print("Identifiant : $name");
                        print("Mot de passe : $password");
                        print("Remember me: $rememberMe");

                        Fluttertoast.showToast(
                          msg: "Connexion réussie!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 5,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    },
                    child: const Text("Se connecter"),
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
