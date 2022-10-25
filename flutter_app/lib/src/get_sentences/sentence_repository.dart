
import 'package:dio/dio.dart';
import 'package:flutter_app/src/get_sentences/models/cep.dart';

class SentenceRepository {

	final Dio dio = Dio(
		BaseOptions(
			baseUrl: 'http://viacep.com.br/ws',
		)
  );

	Future<Cep> getSentence(String callAddress) async {
    final String call = callAddress;
		final response = await dio.get('/$call/json/');

		return Cep.fromMap(response.data);
	}


}