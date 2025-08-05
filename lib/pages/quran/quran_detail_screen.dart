import 'package:flutter/material.dart';
import 'package:dandi_flutter/models/quran_model.dart';

class QuranDetailScreen extends StatelessWidget {
  final QuranModel surah;

  const QuranDetailScreen({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(surah.nama ?? 'Detail Surah'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                surah.asma ?? '',
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                '(${surah.arti ?? '-'})',
                style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 16),
            Text('Jumlah Ayat: ${surah.ayat}'),
            Text('Diturunkan Di: ${surah.type}'),
            Text('Urutan Surat Ke : ${surah.urut}'),
            Text('Nomor: ${surah.nomor}'),
            Text('Rukuk: ${surah.rukuk}'),
            const SizedBox(height: 16),
            Text(
              'Keterangan:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(surah.keterangan ?? '-'),
           
          ],
        ),
      ),
    );
  }
}
