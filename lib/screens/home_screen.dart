import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:theme_provider/providers/counter_provider.dart';
import 'package:theme_provider/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String title = 'Theme Provider';

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            tooltip: 'Decrement',
            icon: const Icon(Icons.history),
            key: const Key('decrementButton'),
            onPressed: () => counter.decrement(),
          ),
          IconButton(
            tooltip: 'Settings',
            icon: const Icon(Icons.settings),
            key: const Key('settingsButton'),
            onPressed: () => Navigator.of(context).pushNamed(Routes.setting),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '${counter.count}',
                key: const Key('counterState'),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        key: const Key('incrementFAB'),
        onPressed: () => counter.increment(),
      ),
    );
  }
}
