import 'package:flutter/material.dart';
import 'package:harry_potter_house/helper.dart';


void main() => runApp(const HarryPotterHouses());

class HarryPotterHouses extends StatelessWidget {
  const HarryPotterHouses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HarryPoterPage(),
    );
  }
}



class HarryPoterPage extends StatefulWidget {
  const HarryPoterPage({super.key});

  _HarryPoterPageState createState() => _HarryPoterPageState();
}

class _HarryPoterPageState extends State<HarryPoterPage> {
  Helper helper = Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('imagens/harrypotter.png'),
          fit: BoxFit.cover,
        ),
      ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Expanded(
                flex: 12,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 120),
                    child: Text(
                      helper.getQuestion(),

                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      helper.nextQuestion(1);
                    });
                  },
                  child: Text(

                    helper.getChoice1(),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      helper.nextQuestion(2);
                    });
                  },
                  child:  Text(

                    helper.getChoice2(),
                    style: const TextStyle(
                      fontSize: 20.0,
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
