import 'package:flutter/material.dart';
void main() => runApp(const MetaTradeApp());
class MetaTradeApp extends StatelessWidget {
  const MetaTradeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  double balance = 10000;
  double price = 2650.45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meta Trade'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(child: ListTile(title: const Text('الرصيد'), trailing: Text('\$${balance.toStringAsFixed(2)}', style: const TextStyle(fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold)))),
            const SizedBox(height: 16),
            Card(child: ListTile(title: const Text('XAU/USD'), subtitle: const Text('الذهب'), trailing: Text('\$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20, color: Colors.amber)))),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green), onPressed: () { setState(() { balance += 10; }); }, child: const Text('BUY شراء'))),
              const SizedBox(width: 12),
              Expanded(child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red), onPressed: () { setState(() { balance -= 10; }); }, child: const Text('SELL بيع'))),
            ]),
            const SizedBox(height: 20),
            const Text('Meta Trade - نسخة تجريبية', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
