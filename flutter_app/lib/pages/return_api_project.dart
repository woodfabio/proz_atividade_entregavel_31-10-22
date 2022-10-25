/*
import 'package:flutter/material.dart';
import 'package:flutter_app/home/sentence_controller.dart';
import 'package:flutter_app/src/get_sentences/sentence_repository.dart';

class ReturnPageApiProject {
  
  final controller = SentenceController(repository: SentenceRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViaCEP API Project'),  
      ),
      body: Column(
        children: [

          FutureBuilder(
				future: controller.getSentence(callAddress),
				builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            TextFormField(

            );
          }
					else if (snapshot.connectionState == ConnectionState.waiting) {
						return const Center(
							child: Text('Aguardando...'),
						);
					} else if (snapshot.hasError) {
						return const Center(
							child: Text('Erro.'),
						);
					} else if (snapshot.hasData && snapshot.hasError) {
						return const Center(
							child: Text('Não há dados para mostrar.'),
						);
					}
					return ListView.builder(
						itemCount: snapshot.data!.length,
						itemBuilder: (context, index) {
							return Card(
								child: Column(
									children: <Widget> [
										Text('${snapshot.data![index].logradouro}, ${snapshot.data![index].logradouro}'),
										Text('${snapshot.data![index].bairro}, ${snapshot.data![index].localidade} - ${snapshot.data![index].uf}'),
                        Text('${snapshot.data![index].cep}'),
									],
								),
							),
						},
					);
				
				}
			),
        ],
      ),;  
  }
}

*/