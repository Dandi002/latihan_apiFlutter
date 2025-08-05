import 'package:dandi_flutter/pages/quran/quran_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:dandi_flutter/models/quran_model.dart';
import 'package:dandi_flutter/services/quran_service.dart';
 
class QuranListScreen extends StatelessWidget {
  const QuranListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: FutureBuilder<List<QuranModel>>(
        future: PostService.listQuran(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final quranData = snapshot.data ?? [];
          return ListView.builder(
            itemCount: quranData.length,
            itemBuilder: (context, index) {
              final surah = quranData[index];
              return ListTile(
                leading: Text(surah.nomor ?? '-'),
                title: Text(surah.nama ?? '-'),
                subtitle: Text('${surah.arti ?? ''} • ${surah.ayat} ayat'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => QuranDetailScreen(surah: surah),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
