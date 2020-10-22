import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class UserDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            child: Card(
              color: Colors.tealAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: 'https://avatars0.githubusercontent.com/u/4?v=4',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Number ID',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      '@User',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Laboris sint fugiat sunt sit fugiat excepteur excepteur deserunt ut ipsum. Exercitation amet sint nulla fugiat adipisicing dolore non consectetur pariatur laborum nisi anim amet cillum. Sint non voluptate minim.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: OutlineButton(
                      onPressed: () {
                        print('Click');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text('View Profile'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
