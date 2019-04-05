import 'package:dev_rpg/src/style_sphinx/flex_questions.dart';
import 'package:dev_rpg/src/style_sphinx/fonts.dart';
import 'package:dev_rpg/src/style_sphinx/sphinx_image.dart';
import 'package:dev_rpg/src/style_sphinx/text_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SphinxScreen extends StatelessWidget {
  static const String routeName = '/sphinx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/style_sphinx/pyramid.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: TextBubble(
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: JoystixText(
                            'Welcome, friend.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: JoystixText(
                            'I am the Style Sphinx.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        JoystixText(
                          'To proceed, solve for me these layouts three!',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(child: SphinxImage()),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: FlatButton(
                    color: Colors.red,
                    child: const JoystixText('Face the Sphinx'),
                    onPressed: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) {
                            return const ColumnQuestion(
                              child: RowQuestion(
                                child: StackQuestion(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
