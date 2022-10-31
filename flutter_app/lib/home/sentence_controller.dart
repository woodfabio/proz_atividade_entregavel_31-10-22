
import 'dart:developer';

import 'package:flutter_app/src/get_sentences/models/character.dart';
import 'package:flutter_app/src/get_sentences/sentence_repository.dart';

class SentenceController {

  final SentenceRepository repository;
  String? cep;

  SentenceController({required this.repository});

	Future<Cep> getSentence(String call) async {
		try{return await repository.getSentence(call);
    } catch (e) {
      log(e.toString()); 
      throw e;}
  }	
  
}