import 'package:flutter/material.dart';

Card cardview(
    Widget title, Widget subtitle, Widget summary, Widget buttonText) {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
            trailing: const Icon(Icons.close),
            title: title,
            subtitle: subtitle),
        summary,
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                // Perform some action
              },
              child: buttonText,
            ),
          ],
        ),
      ],
    ),
  );
}
