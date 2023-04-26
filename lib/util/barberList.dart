import 'package:flutter/material.dart';

import '../constants.dart';

class BarberList extends StatefulWidget {

  final String name, imageS;

  const BarberList({Key? key, required this.name, required this.imageS})
      : super(key: key);

  @override
  State<BarberList> createState() => _BarberListState();
}

class _BarberListState extends State<BarberList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.imageS, height: 200,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: <Widget>[
                  Text(widget.name),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: const Icon(Icons.favorite),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
