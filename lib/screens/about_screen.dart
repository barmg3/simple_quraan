import 'package:flutter/material.dart';
import 'package:simple_quraan/utilities/assets.dart';

import '../utilities/strings.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.about),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Text(AppStrings.aboutText , style: TextStyle(color: Colors.black , fontSize: 22, fontWeight: FontWeight.w700)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(thickness: 2, color:Colors.black , indent: 5, endIndent: 5,height: 5),
            ),
            const Text(AppStrings.developAndDesign, style: TextStyle(color: Colors.black, fontSize: 18 , fontWeight: FontWeight.w600)),
            //Waleed Developers Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: ExactAssetImage(ImageAssets.waleedImage),
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(AppStrings.waleedName, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700)),
                          const Text(AppStrings.waleedJob, style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                Image.asset(ImageAssets.gmail),
                                Image.asset(ImageAssets.linkedin),
                                Image.asset(ImageAssets.whatsapp),
                                Image.asset(ImageAssets.telegram),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Islam Developers Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: ExactAssetImage(ImageAssets.waleedImage),
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(AppStrings.islamName, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700)),
                          const Text(AppStrings.islamJob, style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children:[
                                Image.asset(ImageAssets.gmail),
                                Image.asset(ImageAssets.linkedin),
                                Image.asset(ImageAssets.whatsapp),
                                Image.asset(ImageAssets.telegram),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
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
