import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'Kaydedilenlerim',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          PopupMenuButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            icon: const Icon(
              Icons.sort_outlined,
              color: Colors.green,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'alphabetic',
                  child: Row(
                    children: [
                      const Icon(
                        Icons.sort_by_alpha_outlined,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "A'dan Z'ye",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'date',
                  child: Row(
                    children: [
                      const Icon(
                        Icons.history_outlined,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Son Eklenen',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'alphabetic') {
              } else if (value == 'date') {}
            },
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: const Center(
        child: Text('placeholder'),
      ),
    );
  }
}
