import 'package:flutter/material.dart';
import 'package:flutter_app/home/sentence_controller.dart';
import 'package:flutter_app/src/get_sentences/models/character.dart';
import 'package:flutter_app/src/get_sentences/sentence_repository.dart';
import 'package:flutter_app/src/get_sentences/models/character.dart';

class HomePageApiProject extends StatefulWidget {
  
@override
  State<HomePageApiProject> createState() => _HomePageApiProjectState();
}

class _HomePageApiProjectState extends State<HomePageApiProject> {

  final controller = SentenceController(repository: SentenceRepository());
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Harry Potter API Project'),  
      ),
      body: FutureBuilder(
				future: controller.getList(),
				builder: (context, snapshot) {
					if (!snapshot.hasData && !snapshot.hasError) {
						return const Center(
							child: Text('Aguardando'),
						);
					} else if (snapshot.hasError) {
						return const Center(
							child: Text('Erro'),
						);
					} else if (snapshot.hasData && snapshot.hasError) {
						return const Center(
							child: Text('Não há dados para mostrar.'),
						);
					}
					return ListView.builder(
						itemCount: snapshot.data!.length,
						itemBuilder: (context, index) {

              String charImg;
              snapshot.data![index].image == "" ? 
              charImg = 'https://static.vecteezy.com/system/resources/thumbnails/007/873/452/small/wizard-hat-icon-illustration-designs-that-are-suitable-for-websites-apps-and-more-free-vector.jpg' :
							charImg = snapshot.data![index].image!;

              return Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(50)),
                  ),             
								child: Row(
									children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(charImg),
                          ),                        
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                        
                          Text(snapshot.data![index].name!),
										      Text(snapshot.data![index].house!),
                        ],
                      ),
                    ),
									],
								),
							);
						},
					);				
				}			
      ),
    );  
  }
}