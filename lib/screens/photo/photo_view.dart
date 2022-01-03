import 'package:flutter/material.dart';
import 'package:flutter_jsonplaceholder/screens/photo/photo_viewModel.dart';
import 'package:provider/provider.dart';

class PhotoPage extends StatefulWidget {
  PhotoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  PhotoViewModel viewModel = PhotoViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.getAllPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PhotoViewModel>(
      lazy: true,
      create: (context) => viewModel,
      child: Consumer<PhotoViewModel>(
        builder: (context, value, child) => ListView.builder(
            itemCount: value.photos.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ExpansionTile(
                      leading: Image.network(value.photos[index].thumbnailUrl!),
                      title: Text(value.photos[index].title!),
                      children: [
                        Text('Album ID: ${value.photos[index].albumId}'),
                        const SizedBox(height: 10),
                        Image.network(value.photos[index].url!)
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
