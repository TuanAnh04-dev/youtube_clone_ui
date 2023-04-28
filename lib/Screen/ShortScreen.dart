import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShortScreen extends StatefulWidget {
  const ShortScreen({super.key});

  @override
  State<ShortScreen> createState() => _ShortScreenState();
}

class _ShortScreenState extends State<ShortScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
