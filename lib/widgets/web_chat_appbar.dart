import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/info.dart';

import 'color.dart';

class webChatAppBar extends StatelessWidget {
  const webChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: dividerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
                radius: 23,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info[0]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'online',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    size: 25,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
