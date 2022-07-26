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
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('data'),
            Text('data2'),
          ],
        ),
      ),
    );
  }
}
