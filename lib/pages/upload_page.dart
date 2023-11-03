import 'package:flutter/material.dart';
import 'package:instagramproject/utilities/datas.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New post',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 35,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 35,
              Icons.arrow_forward,
              color: Colors.blue,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color.fromARGB(185, 0, 0, 0)
            : const Color.fromARGB(223, 158, 158, 158),
        elevation: 0,
        onPressed: null,
        label: const SizedBox(
          width: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'POST',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'STORY',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'REELS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'LIVE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      // persistentFooterButtons: const [
      //   Icon(Icons.abc),
      //   Icon(Icons.abc_sharp),
      // ],
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.onSecondary,
              height: 315,
              child: Image.network(
                'https://i.pinimg.com/550x/c4/ab/eb/c4abebfe8f0682058c29d4ab28308648.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 0.4,
              color: Colors.white,
            ),
            Container(
              height: 50,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text('Recents'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.copy, size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'SELECT MULTIPLE',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 19,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 658,
              color: Theme.of(context).colorScheme.background,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: addPics.length,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      itemBuilder: (context, index) {
                        final pics = addPics[index];
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            color: Theme.of(context).colorScheme.onSecondary,
                            child: Image.network(
                              pics,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
