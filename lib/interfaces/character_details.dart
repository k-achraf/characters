import 'package:after_layout/after_layout.dart';
import 'package:describeme/models/Character.dart';
import 'package:describeme/style/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CharacterDetails extends StatefulWidget {

  final Character character;

  final double expandedBottomSheet = 0;
  final double colapsedBottomSheet = -250;
  final double completedBottomSheet = -330;


  CharacterDetails({@required this.character});

  @override
  _CharacterDetailsState createState() => _CharacterDetailsState();
}

class _CharacterDetailsState extends State<CharacterDetails> with AfterLayoutMixin<CharacterDetails>{

  double bottomSheetButtonPosition = -330;
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    double bottomPadding = 8.0;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "Background-${widget.character.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.character.colors,
                  begin: Alignment.topRight,
                  end: Alignment.topLeft
                )
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: IconButton(
                    onPressed: (){
                      Future.delayed(
                        Duration(milliseconds: 250),
                        (){
                          setState(() {
                            bottomSheetButtonPosition = widget.completedBottomSheet;
                          });
                          Navigator.of(context).pop();
                        }
                      );
                    },
                    icon: Icon(
                      Icons.close,
                    ),
                    color: Colors.white.withOpacity(0.9),
                    iconSize: 40.0,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: "image-${widget.character.name}",
                    child: Image.network(
                      widget.character.image,
                      height: height * 0.45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                  child: Hero(
                    tag: "name-${widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name,
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 86.0),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.subheading,
                  ),
                )
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.bounceInOut,
            bottom: bottomSheetButtonPosition,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: _onTap,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      height: 80.0,
                      child: Text(
                        "Clips",
                        style: AppTheme.subheading.copyWith(color: Color(0xFF000000)),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _clipsWidget(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _clipsWidget(){
    return Container(
      height: 250.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Column(
            children: [
              RoundedContainer(Colors.redAccent),
              SizedBox(height: 20.0,),
              RoundedContainer(Colors.greenAccent),
            ],
          ),
          SizedBox(width: 16.0,),
          Column(
            children: [
              RoundedContainer(Colors.orangeAccent),
              SizedBox(height: 20.0,),
              RoundedContainer(Colors.purple),
            ],
          ),
          SizedBox(width: 16.0,),
          Column(
            children: [
              RoundedContainer(Colors.grey),
              SizedBox(height: 20.0,),
              RoundedContainer(Colors.blueGrey),
            ],
          ),
          SizedBox(width: 16.0,),
          Column(
            children: [
              RoundedContainer(Colors.lightGreen),
              SizedBox(height: 20.0,),
              RoundedContainer(Colors.pinkAccent),
            ],
          ),
        ],
      ),
    );
  }

  Widget RoundedContainer(Color color){
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(
      Duration(milliseconds: 500),
      (){
        setState(() {
          isCollapsed = true;
          bottomSheetButtonPosition = widget.colapsedBottomSheet;
        });
      }
    );
  }

  void _onTap(){
    setState(() {
      bottomSheetButtonPosition = isCollapsed
          ? widget.expandedBottomSheet
          : widget.colapsedBottomSheet;
      isCollapsed = !isCollapsed;
    });
  }
}
