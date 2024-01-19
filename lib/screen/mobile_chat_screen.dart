import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/color.dart';
import 'package:whatsapp_ui/widgets/info.dart';

class mobileChatScreen extends StatelessWidget {
  const mobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_sharp,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: chatList()),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: mobileChatBoxColor,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.link,
                                color: Colors.grey,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.currency_rupee,
                                color: Colors.grey,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.camera_alt,
                                  color: Colors.grey)),
                        ],
                      ),
                    ),
                    hintText: 'Message',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                  ),
                ),
              ),
              InkWell(
                onLongPress: () {},
                child: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4),
                  child:  Icon(
                    Icons.mic,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          )
          // Expanded(child: chatList()),
        ],
      ),
    );
  }
}
