import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({
    super.key,
    // required this.text,
    // required this.description,
    // required this.image,
  });

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  // final String text;
  bool whenClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          //when clicked indicates when clicked turn red and show snackbar else show the other one as well
                          if (whenClicked = !whenClicked) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: Duration(seconds: 2),
                                content: Text("item added to favourites")));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("item removed from favourites")));
                          }
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: whenClicked ? Colors.red : Colors.white,
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
