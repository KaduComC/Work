import 'package:flutter/material.dart';
import 'package:projeto_tcc/models/user.dart';

class AvatarUser extends StatelessWidget {
  final User user;

  const AvatarUser(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatar == null || user.avatar.isEmpty
        ? CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/person.jpeg'),
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 80),
              child: FloatingActionButton.small(
                onPressed: () {},
                backgroundColor: Color(0xFF2A0845),
                child: Icon(Icons.add),
              ),
            ),
          )
        : CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(user.avatar),
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 80),
              child: FloatingActionButton.small(
                onPressed: () {},
                backgroundColor: Color(0xFF2A0845),
                child: Icon(Icons.add),
              ),
            ),
          );

    return avatar;
  }
}
