import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Theme.of(context).hintColor,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Peter Parker",
                    style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context)
                            .hintColor,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding:
            EdgeInsets.only(right: 0, top: 0),
            child: Text(
              this.title,
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).hintColor,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none,
                color: Theme.of(context).hintColor),
          ),
        )
      ],
    );
  }
}
