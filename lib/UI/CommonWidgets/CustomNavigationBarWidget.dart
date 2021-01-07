import 'package:flutter/material.dart';

const Color PRIMARY_COLOR = Colors.blueAccent;
const Color BACKGROUND_COLOR = Color(0xffE2E7F2);

class CustomBottomNavigationBar extends StatefulWidget {
  final Color backgroundColor;
  final Color itemColor;
  final List<CustomBottomNavigationItem> children;
  final Function(int) onChange;
  final int currentIndex;

  CustomBottomNavigationBar(
      {this.backgroundColor = BACKGROUND_COLOR,
        this.itemColor = PRIMARY_COLOR,
        this.currentIndex = 0,
        @required this.children,
        this.onChange});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _changeIndex(int index) {
    if (widget.onChange != null) {
      widget.onChange(index);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: widget.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.children.map((item) {
          var color = item.color ?? widget.itemColor;
          var icon = item.icon;
          var label = item.label;
          int index = widget.children.indexOf(item);
          return GestureDetector(
            onTap: () {
              _changeIndex(index);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: widget.currentIndex == index
                  ? MediaQuery.of(context).size.width / widget.children.length +
                  20 : 50,
              padding: EdgeInsets.only(left: 0, right: 0),
              margin: EdgeInsets.only(top: 0, bottom: 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: widget.currentIndex == index
                      ? color.withOpacity(0.3)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 20,
                    color: widget.currentIndex == index
                        ? color
                        : color.withOpacity(0.5),
                  ),
                  widget.currentIndex == index
                      ? Expanded(
                    flex: 2,
                    child: Text(
                      label ?? '',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: widget.currentIndex == index
                              ? color
                              : color.withOpacity(0.5)),
                    ),
                  )
                      : Container()
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CustomBottomNavigationItem {
  final IconData icon;
  final String label;
  final Color color;

  CustomBottomNavigationItem(
      {this.icon, @required this.label, this.color});
}


// CustomBottomNavigationBar(
// currentIndex: 0,
// onChange: (index) {
// // _pageController.animateToPage(index,
// //     duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
// },
// children: [
// CustomBottomNavigationItem(
// icon: Icons.home,
// label: 'Home',
// ),
// CustomBottomNavigationItem(
// icon: Icons.receipt,
// label: 'Receipt',
// ),
// CustomBottomNavigationItem(
// icon: Icons.notifications,
// label: 'Notification',
// ),
// CustomBottomNavigationItem(icon: Icons.person, label: 'Account'),
// ],
// ),