import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/Contact_list.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/color.dart';
import 'package:whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                webProfileBar(),
                webSearchBar(),
                ContactList(),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .73,
          decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: dividerColor)),
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              const webChatAppBar(),
              const SizedBox(height: 20),
              const Expanded(child: chatList()),
              Container(
                padding: const EdgeInsets.all(4),
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                )),
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Type a message',
                            contentPadding: const EdgeInsets.only(left: 20)),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        )),
                  ],
                ),
              )
              //message app bar
            ],
          ),
        )
      ],
    ));
  }
}
// body: Row(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Container(
// width: 368,
// child: const Expanded(
// child: SingleChildScrollView(
// child: Column(
// children: [
// webProfileBar(),
// webSearchBar(),
// ContactList(),
// ],
// ),
// ),
// ),
// ),
// Expanded(
// child: Container(
// width: MediaQuery.of(context).size.width * .73,
// decoration: const BoxDecoration(
// border: Border(left: BorderSide(color: dividerColor)),
// image: DecorationImage(
// image: AssetImage('assets/backgroundImage.png'),
// fit: BoxFit.cover,
// )),
// child: const Column(
// children: [
// webChatAppBar(),
// chatList(),
// //message app barw
// ],
// ),
// ),
// )
// ],
// ));
// }
// }
