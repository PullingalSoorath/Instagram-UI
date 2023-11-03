import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramproject/pages/searching.dart';
import 'package:instagramproject/utilities/datas.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 15, left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Searching(),
                        ));
                  },
                  child: SizedBox(
                    height: 36,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.symmetric(vertical: 5),
                        fillColor: Theme.of(context).colorScheme.onSecondary,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: addPics.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final pics = addPics[index];
                  return Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Theme.of(context).colorScheme.onSecondary,
                          child: Image.network(
                            pics,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'assets/Reels_filled.svg',
                                height: 20,
                                // ignore: deprecated_member_use
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),

                    // Container(
                    //   width: 40,
                    //   height: 40,
                    //   color: Theme.of(context).colorScheme.onSecondary,
                    //   child: Stack(alignment: Alignment.topRight, children: [
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: SvgPicture.asset(
                    //         'assets/Reels_filled.svg',
                    //         height: 20,
                    //         // ignore: deprecated_member_use
                    //         color: Colors.white,
                    //       ),
                    //     )
                    //   ]),
                    // ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
