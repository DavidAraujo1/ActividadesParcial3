import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ultimabd/Usuarios.dart';

Future<dynamic> getUsuarios() async {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("usuarios");
  QuerySnapshot usuarios = await collectionReference.get();
  usuariosDatos = [];
  if (usuarios.docs.isNotEmpty) {
    for (var item in usuarios.docs) {
      print(usuarios.docs);
    }
  }
  return usuariosDatos;
}
