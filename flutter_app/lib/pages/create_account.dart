
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/widgets/custom_textformfield.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ===================================================================================================================================
// ATENCAO: por razoes de otimizacao de tempo este codigo nao foi terminado, mas o .txt desta aula esta bem completo <----------------
// ===================================================================================================================================

class CreateAccount extends StatefulWidget {

  final _phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+00 (00) 00000-0000',
    filter: {"0": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
    );

  CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Registre-se no ContactApp',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 8.0,),
              const CustTextFormField(
                label: 'Nome',
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16.0,), // espacamento entre campos
              CustTextFormField(
                label: 'Telefone',
                textInputType: TextInputType.phone,
                inputFormatters: [ widget._phoneMaskFormatter ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

