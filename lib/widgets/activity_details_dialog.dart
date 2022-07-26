import 'package:flutter/material.dart';

class ActivityDetailsDialog extends StatefulWidget {
  const ActivityDetailsDialog({Key? key}) : super(key: key);

  @override
  State<ActivityDetailsDialog> createState() => _ActivityDetailsDialogState();
}

class _ActivityDetailsDialogState extends State<ActivityDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('data'),
            Text('data2'),
          ],
        ),
      ),
    );
  }
}
