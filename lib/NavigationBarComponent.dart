import 'package:flutter/material.dart';

class NavigationBarComponent extends StatefulWidget {
  final TabController tabController;

  const NavigationBarComponent({
    Key? key,
    required this.tabController
  }) : super(key: key);

  @override
  _NavigationBarComponentState createState() => _NavigationBarComponentState();
}

class _NavigationBarComponentState extends State<NavigationBarComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.tabController.index,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
        // Mise à jour de l'état pour provoquer un redessin
        setState(() {
          // Animer le changement d'onglet
          widget.tabController.animateTo(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut
          );
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'Timer',
        ),
      ],
    );
  }
}