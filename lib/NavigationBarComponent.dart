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
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: BottomNavigationBar(
        currentIndex: widget.tabController.index,
        selectedItemColor: Colors.deepOrange,
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
            icon: Icon(Icons.home_filled),
            activeIcon: Icon(Icons.home_filled, size: 28),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            activeIcon: Icon(Icons.equalizer, size: 28),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled),
            activeIcon: Icon(Icons.access_time_filled, size: 28),
            label: 'Timer',
          ),
        ],
      )
    );
  }
}