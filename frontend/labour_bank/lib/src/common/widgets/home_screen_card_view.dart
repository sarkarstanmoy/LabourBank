import 'package:flutter/material.dart';

Card cardview(
    Widget title, Widget subtitle, Widget summary, Widget buttonText) {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: ListTile(
        trailing: const Icon(Icons.close), title: title, subtitle: subtitle),
  );
}
