import 'package:describeme/models/Character.dart';
import 'package:describeme/style/styleguide.dart';
import 'package:describeme/widgets/character_widget.dart';
import 'package:flutter/material.dart';

class Characters extends StatefulWidget {
  @override
  _CharactersState createState() => _CharactersState();
}

class _CharactersState extends State<Characters> {

  PageController _pageController;
  int _currentPage = 0;

  @override
  void initState(){
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: _currentPage,
      keepPage: false
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Despicable Me",
                        style: AppTheme.display1
                      ),
                      TextSpan(
                        text: "\n"
                      ),
                      TextSpan(
                        text: "Character",
                        style: AppTheme.display2
                      )
                    ]
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    for(var i = 0; i < characters.length; i++)
                      CharacterWidget(
                        character: characters[i],
                        pageController: _pageController,
                        currentPage: i
                      )

                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
