import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import '../widgets/custom_widgets/custom_card.dart';
import '../widgets/chat_list_item.dart';
import './chat_screen.dart';

class ChatsListScreen extends StatelessWidget {
  const ChatsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            FamilleIcons.angleleft,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          AppLocalizations.of(context).chats,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FamilleIcons.add,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomCard(
            Column(
              children: [
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/pp2.jpg"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '@moira_esin',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Naber ablam?',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatScreen(),
                      ),
                    );
                  },
                ),
                const Divider(
                  color: Colors.grey,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '@akraba',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Merhaba!',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.grey,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '@akraba2',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Çok teşekkürlerrr',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.grey,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black12,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '@akraba3',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Nasılsın?',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
