import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/color.dart';

class webProfileBar extends StatelessWidget {
  const webProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.35,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
            ),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.message,color: Colors.grey,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert,color: Colors.grey,)),
            ],
          )
        ],
      ),
    );
  }
}
