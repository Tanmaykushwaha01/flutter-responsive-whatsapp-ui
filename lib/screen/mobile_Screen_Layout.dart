import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/Contact_list.dart';
import 'package:whatsapp_ui/widgets/color.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: const Text(
              'Whatsapp',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey),
            ),
            // centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 3,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            elevation: 1,
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ));
  }
}
