import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.red[900],
                child: const Text('ML'),
              ))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5c640f2d-8a5b-4996-8504-8a0ef55c1029/d9h4v1f-7cb67437-654a-49fb-9bff-a92b362d9543.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzVjNjQwZjJkLThhNWItNDk5Ni04NTA0LThhMGVmNTVjMTAyOVwvZDloNHYxZi03Y2I2NzQzNy02NTRhLTQ5ZmItOWJmZi1hOTJiMzYyZDk1NDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.txtwTqNMGrDIKm79V4MuX2SqdpydwKg_NvIKnmsTmtA'),
        ),
      ),
    );
  }
}
