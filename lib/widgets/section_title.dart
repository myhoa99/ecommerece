import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SectionTitle extends StatelessWidget {
  String? title;
  SectionTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text(
        title!,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(color: Colors.black),
      ),
    );
  }
}
