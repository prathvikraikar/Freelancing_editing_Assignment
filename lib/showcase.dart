import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  final List<Video> _videos = [
    Video(
      title: 'Wedding Highlights',
      thumbnail: 'https://picsum.photos/id/1015/300/200',
      url:
          'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Travel Vlog',
      thumbnail: 'https://picsum.photos/id/1018/300/200',
      url:
          'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
    Video(
      title: 'Product Demo',
      thumbnail: 'https://picsum.photos/id/1021/300/200',
      url:
          'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _videos.map((video) {
          return GestureDetector(
            onTap: () {
              // Open full video or preview
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(video.thumbnail),
                  Text(video.title),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Video {
  final String title;
  final String thumbnail;
  final String url;

  Video({required this.title, required this.thumbnail, required this.url});
}
