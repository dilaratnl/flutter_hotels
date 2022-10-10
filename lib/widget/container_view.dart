import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key, required this.myclor});
  final Color myclor;

  @override
  Widget build(BuildContext context) {
    return Container(color:myclor, );
  }
}