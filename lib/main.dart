import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                    'Salar de Uyuni',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Altiplano, Bolivia, Amerika Selatan',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(

        'Salar de Uyuni adalah dataran garam terbesar di dunia, '
        'terletak di barat daya Bolivia, dekat pegunungan Andes. '
        'Dataran ini terbentuk dari danau prasejarah yang mengering, '
        'meninggalkan lapisan garam yang luas dan datar. '
        'Dengan luas sekitar 10.582 km², Salar de Uyuni adalah tujuan wisata populer karena pemandangannya yang menakjubkan, '
        'terutama selama musim hujan ketika permukaannya tertutup air dan menciptakan efek cermin raksasa. '
        'Selain keindahan alamnya, dataran ini juga kaya akan mineral, '
        'termasuk lithium, yang penting untuk teknologi modern seperti baterai. '
        'Salar de Uyuni adalah tempat yang unik dan menakjubkan yang menarik pengunjung dari seluruh dunia.'
,
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nimas Septiandini - 2341760087',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/salarDeUyuni.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  
}