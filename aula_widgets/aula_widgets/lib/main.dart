import 'package:flutter/material.dart';

void main() {
  runApp(const AulaWidgetApp());
}

class AulaWidgetApp extends StatelessWidget {
  const AulaWidgetApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget\'s',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 220, 0, 179),
        ),
      ),
      home: const WidgetsPage(title: 'Aula widgets'),
    );
  }
}

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCouter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int flexA = 2;
    final int flexB = 1;

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the WidgetsPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Tu clicou esse tanto de vezes no butão!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
            Text(
              'Valor atual com juros e correção: $_counter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(width: 20),
            const Text(
              'Row responsival com expanded',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: flexA,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Valor\n$_counter',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                Expanded(
                  flex: flexB,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Dobro\n${_counter * 2}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(width: 12),
                Container(
                  width: 90,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 62, 128),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Triplo\n${_counter * 3}',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            CustomCard(
              titulo: 'Contador: $_counter',
              icone: Icons.calculate, 
              corDeFundo: Colors.deepPurpleAccent
              ),
            
            const SizedBox(height: 24),
            CustomCard(
              titulo: 'Dobro: ${_counter * 2}',
              icone: Icons.filter_2, 
              corDeFundo: Colors.deepPurpleAccent
              ),

            const SizedBox(height: 24),
            CustomCard(
              titulo: 'Par ou Impar?: ${_counter.isEven ?  "Par" : "Impar"}',
              icone: Icons.calculate, 
              corDeFundo: Colors.deepPurpleAccent
              ),
            

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _decrementCouter,
                    icon: const Icon(Icons.remove),
                    label: const Text('Menos'),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _resetCounter,
                    icon: const Icon(Icons.restart_alt),
                    label: const Text('Reset'),
                  ),
                ),

                const SizedBox(height: 20),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
                    label: const Text('Adiciona'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Clica no meu Butão',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String titulo;
  final IconData icone;
  final Color corDeFundo;

  const CustomCard({
    super.key,
    required this.titulo,
    required this.icone,
    required this.corDeFundo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: corDeFundo,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          Icon(icone, size: 8),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              titulo,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
