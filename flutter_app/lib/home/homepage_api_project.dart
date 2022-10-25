import 'package:flutter/material.dart';
import 'package:flutter_app/home/sentence_controller.dart';
import 'package:flutter_app/src/get_sentences/models/cep.dart';
import 'package:flutter_app/src/get_sentences/sentence_repository.dart';

class HomePageApiProject extends StatefulWidget {
  
@override
  State<HomePageApiProject> createState() => _HomePageApiProjectState();
}

class _HomePageApiProjectState extends State<HomePageApiProject> {

  final controller = SentenceController(repository: SentenceRepository());
  final cepController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Cep? cep;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViaCEP API Project'),  
      ),
      body: SingleChildScrollView(
        child: Form(
          onChanged: () {
                setState(() {});
              },
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Insira o CEP:'),
              TextFormField(
                controller: cepController,
              ),
              ElevatedButton(
                    onPressed: () async {
                        final endereco = await controller.getSentence(cepController.text);                        
                        setState(() {                          
                          cep = endereco;
                        });                                                                        
                    },
                    child: const Text('Enviar'),
                  ),
              
              Visibility(
                  visible: cep != null,
									child:
                    Column(
                      children: [
                        Text('${cep?.logradouro}, ${cep?.logradouro}'),
                        Text('${cep?.bairro}, ${cep?.localidade} - ${cep?.uf}'),
                        Text('${cep?.cep}'),
									    ],
                    ),
							),
            ],
          ),
        ),
      ),
    );  
  }
}