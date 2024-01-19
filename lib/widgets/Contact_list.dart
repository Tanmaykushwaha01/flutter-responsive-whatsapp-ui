import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/mobile_chat_screen.dart';
import 'package:whatsapp_ui/widgets/color.dart';
import 'package:whatsapp_ui/widgets/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const mobileChatScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString()),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                ),
              ],
            );
          }),
    );
  }
}
