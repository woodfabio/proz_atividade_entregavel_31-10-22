
import 'dart:developer';
import 'package:flutter_app/src/get_sentences/models/character.dart';
import 'package:flutter_app/src/get_sentences/sentence_repository.dart';

class SentenceController {

  final SentenceRepository repository;

  SentenceController({required this.repository});

	Future<List<Character>> getList() async {
		return await repository.getList();

	}
  
}