import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmptyWidget extends HookWidget{
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}