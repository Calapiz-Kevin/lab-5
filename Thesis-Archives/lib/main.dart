import 'package:flutter/material.dart';
import 'thesisfile.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ListViews',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: Text('THESIS ARCHIVES')),
            backgroundColor: Colors.blue,
            body: BodyLayout(),
          ),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

  Widget _myListView(BuildContext context) {

      final colleges = ['CITC', 'CEA', 'COT', 'CSTE'];

      return ListView.builder(
        itemCount: colleges.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(colleges[index]),
            
          );
          
        },
      );
    }