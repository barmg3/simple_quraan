import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String image ;
  final String title;

  const CustomCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(
          color: Color(0xFF58E4A2),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
              width: 80,
              height: 80),
          Text( title , style: const TextStyle(fontSize: 14 , fontWeight: FontWeight.w400))

        ],
      ),
    );
  }
}

class AthkarCard extends StatelessWidget {
  const AthkarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 20.0),
      child: Container(
          decoration: const BoxDecoration(
              color: Color(0xFF58E4A2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
             CircleAvatar(
                  backgroundColor: Color(0xffFCFCFC),
                  child: Text("1", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400, color: Colors.black,),),
              ),
              SizedBox(
                width: 272,
                child:
                    Text("﴿الله لا إله إلا هو الحي القيوم لا تأخذه سنة ولا نوم له ما في السموات وما في الأرض من ذا الذي يشفع عنده إلا بإذنه يعلم ما بين أيديهم وما خلفهم ولا يحيطون بشيء من علمه إلا بما شاء وسع كرسيه السموات والأرض ولا يؤوده حفظهما وهو العلي العظيم﴾" ,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black, ), textAlign: TextAlign.right,)
              ),
          ]
      ),
        )
      ),
    );
  }
}

