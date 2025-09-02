import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
     padding: const EdgeInsets.all(32),
     child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Taman Nasional Baluran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Situbondo, Indonesia',
                style: TextStyle(
                  color: Colors.grey,
                )
              )
            ],
          ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41"),
      ],
     ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Taman Nasional Baluran adalah permata alam yang terletak di Kabupaten Situbondo, Jawa Timur, Indonesia.'
        ' Dijuluki sebagai "Afrika van Java", taman ini menyuguhkan lanskap savana yang luas dan eksotis, mirip dengan padang rumput Afrika.\n\n'
        'Dian Restu Khoirunnisa_362458302094',

        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: DianRestuKhoirunnisa 362458302094',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset (
              'asset/baluran.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ]
        ),
      ),
    );
        
    


  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color,),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        )
      )
    ]
  );
}