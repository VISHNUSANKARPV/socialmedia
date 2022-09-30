import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/screens/chat/view/chat.dart';
import 'package:social_media/widgets/text_custom/text.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ChatScreen())),
      child: SizedBox(
        height: 80.h,
        width: 100.w,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:10.r,vertical:5.r),
                      child: Row(
                        children: [
                          Container(
                            height:  50.h,
                            width:  50.w ,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(width: 1, color: Colors.white),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://tse4.mm.bing.net/th?id=OIP.XSZAFm-5JI7nriDLwZqRQQHaE7&pid=Api&P=0'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                            const CustomText(text: 'Ronin'),
                                SizedBox(
                                  width: 140.w,
                                  child:const Text(
                                   'hi , ho,jegfwebjtsghkewgmrnfvb,ewjgrejwbrgj4w5eurtjgwenlkjshrlfuhewrhjfku2hwe5krjfhjeww yous  ? ',
                                   style: TextStyle(color: Colors.grey),
                                   maxLines: 2,
                                   overflow: TextOverflow.ellipsis,
                               ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left:10.r, right: 30.r, top: 10.r ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.white ,
                            shadows: [
                              BoxShadow(
                                  color: color,
                                  offset: const Offset(0, 4),
                                  blurRadius: 30),
                              BoxShadow(
                                  color: color,
                                  offset: const Offset(0, 4),
                                  blurRadius: 30),
                            ],
                          ),
                          const Text(
                            '3s.ago',
                            style: TextStyle(color: Color.fromARGB(253, 58, 58, 58)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
