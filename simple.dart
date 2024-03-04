import 'package:flutter/material.dart';

Widget _buildRoundedDrawerHeader(BuildContext context) {
  return Container(
    height: 81,
    // clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(14.0),
        bottomRight: Radius.circular(14.0),
      ),
    ),
    child: DrawerHeader(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'PLACEHOLDER NAME',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),
  );
}
