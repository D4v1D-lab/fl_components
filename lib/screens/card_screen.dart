import 'package:fl_components/screens/screens.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.NPAIClUeeR92ix4Z71njkAHaEo?pid=ImgDet&rs=1',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.gmFj38xgbu3rDjtE5qgWvgHaEK?pid=ImgDet&rs=1',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.1lj4DE74-pzTXTfI06QEqgHaEK?pid=ImgDet&rs=1',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.7-ASwLcaikqkn5naX0SkRgHaEo?pid=ImgDet&rs=1',
            )
          ],
        ));
  }
}


// 'https://th.bing.com/th/id/OIP.NPAIClUeeR92ix4Z71njkAHaEo?pid=ImgDet&rs=1'