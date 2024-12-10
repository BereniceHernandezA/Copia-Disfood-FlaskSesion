import 'package:flutter/material.dart';

class MenuNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const MenuNavigationBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<MenuNavigationBar> createState() => _MenuNavigationBarState();
}

class _MenuNavigationBarState extends State<MenuNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.lightBlueAccent,
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        items: widget.items,
      ),
    );
  }
}
