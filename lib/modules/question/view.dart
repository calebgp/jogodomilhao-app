import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String? selectedOption;
  String question = "Qual o menor pais do mundo?";
  var options = ["China", "Vaticano", "Russia", "Brasil"];

  @override
  Widget build(BuildContext context) {
    var onSurface = Theme.of(context).colorScheme.onSurface;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Questão 1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Text(
                question,
                style: TextStyle(
                  fontSize: 24.0,
                  color: onSurface,
                ),
              ),
              const SizedBox(height: 30.0),
              Expanded(
                child: ListView.builder(
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final option = options[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RadioListTile<String>(
                        title: Text(
                          option,
                          style: const TextStyle(color: Colors.white),
                        ),
                        tileColor: Colors.blue[900],
                        activeColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        value: option,
                        controlAffinity: ListTileControlAffinity.trailing,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              "Confirmação da escolha",
                              style: TextStyle(color: Colors.white),
                            ),
                            content: Text(
                              "Você escolheu a opção $selectedOption. Deseja confirmar?",
                              style: const TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.blue[900],
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text(
                                  "Cancelar",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                child: const Text(
                                  "Confirmar",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  // Coloque aqui o código para enviar a resposta
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'Responder',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
