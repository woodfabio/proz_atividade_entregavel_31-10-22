import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/contact.dart';

class ContactListTile extends StatefulWidget {
  ContactListTile({
    Key? key,
    required this.contact,
    this.isSquare = false,
  }) : super(key: key); 

  final Contact contact;
  bool isSquare;  

  @override
  State<ContactListTile> createState() => _ContactListTileState();

}

class _ContactListTileState extends State<ContactListTile> {
    
  bool _isOpened = false;

  void changeState () {
    setState(() {
      _isOpened = !_isOpened;
    });
  }

  double get containerHeight => _isOpened ? 125.0 : 65.0;
  int get arrowPoint => _isOpened ? -3 : 3;
  //double get avatarSize => _isOpened ? 30.0 : 20.0;
  double get opacityPhone => _isOpened ? 1.0 : 0.0;
  Widget? trailing;
  CrossFadeState get fadeState => _isOpened ? CrossFadeState.showSecond : CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        height: containerHeight,
        width: widget.isSquare ? 
                MediaQuery.of(context).size.width/2
                : double.infinity,
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [                  
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          maxRadius: MediaQuery.of(context).size.width/20,
                            backgroundImage: widget.contact.url != null ?
                                            NetworkImage(widget.contact.url!) :
                                            NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1.0),
                                    child: Text(widget.contact.name),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0.1),
                                    child: Text(widget.contact.jobTitle,
                                      style: TextStyle(
                                      fontSize: 10.0,
                                      ),
                                    ),
                                  ),                                  
                                  AnimatedCrossFade(
                                    duration: const Duration(milliseconds: 100),
                                    crossFadeState: fadeState,
                                    firstChild: const SizedBox.shrink(),
                                    secondChild: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: widget.contact.phone != null ? 
                                      AnimatedOpacity(
                                        opacity: opacityPhone,
                                        duration: const Duration(milliseconds: 500),
                                        child: Text(
                                          widget.contact.phone!,
                                          style: TextStyle(
                                          fontSize: 22.0,
                                          ),
                                        ),
                                      ) : null,
                                    ),
                                  ),
                                ]
                              ),
                        ),
                    ],
                  ),
                  RotatedBox(
                    quarterTurns: arrowPoint,
                    child: widget.contact.phone != null ?
                    IconButton(
                      onPressed: changeState, 
                      icon: const Icon(Icons.arrow_back_ios),
                      ) : null,
                  ),
                ],
              ),              
            ],
          ),
        ),
      ),
    );
  }
}