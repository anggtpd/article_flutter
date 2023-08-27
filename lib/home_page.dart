import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final Uri _url = Uri.parse("tel:+1-555-010-999");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/image.png',
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pantai Teluk Penyu',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Cilacap, Jawa Tengah',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          '4.2',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => launchUrl(_url),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.call,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'CALL',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.near_me,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'ROUTE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'SHARE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),
                child: Text(
                  'Teluk Penyu merupakan kawasan pantai di selatan Kabupaten Cilacap, utamanya sepanjang pesisir dari Kecamatan Cilacap Selatan yang lokasinya tidak langsung berhubungan dengan Samudera India atau Indonesia karena dikelilingi oleh Pulau Nusakambangan. Pantai Teluk Penyu berjarak 2 km ke arah timur  dari Pusat Pemerintahan Kabupaten Cilacap dan dapat dijangkau dengan kendaraan umum dan pribadi. Teluk ini cukup memiliki pemandangan yang indah dengan luas kira-kira 14 ha.'
                  '\n\nTeluk Penyu merupakan kawasan pantai di selatan Kabupaten Cilacap, utamanya sepanjang pesisir dari Kecamatan Cilacap Selatan yang lokasinya tidak langsung berhubungan dengan Samudera India atau Indonesia karena dikelilingi oleh Pulau Nusakambangan. Pantai Teluk Penyu berjarak 2 km ke arah timur  dari Pusat Pemerintahan Kabupaten Cilacap dan dapat dijangkau dengan kendaraan umum dan pribadi. Teluk ini cukup memiliki pemandangan yang indah dengan luas kira-kira 14 ha.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
