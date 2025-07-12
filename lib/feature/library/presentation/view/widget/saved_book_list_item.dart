
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SavedBookListItem extends StatelessWidget {
  const SavedBookListItem({super.key, required this.book});

  final SavedBookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = Uri.parse(book.previewLink);
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        }
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  book.thumbnail,
                  width: 100,
                  height: 140,
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, __) => const Icon(Icons.broken_image),
                  
                ),
              ),
            ),
            const SizedBox(width: 30 ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  const SizedBox(height: 30 ),
                  Text(
                    book.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle22,
                  ),
                  const SizedBox(height: 32,),
                  Text(
                    'Tap to preview',
                    style: Styles.textStyle17.copyWith(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}