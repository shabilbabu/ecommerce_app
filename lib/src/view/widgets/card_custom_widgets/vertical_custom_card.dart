import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardVertical extends StatelessWidget {
   CustomCardVertical({Key? key,required this.images}) : super(key: key);

  String images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: Card(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images),fit: BoxFit.cover),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 17.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child:  Center(
                              child: Text(
                                '24%Off',
                                style: GoogleFonts.inter(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 16.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 100, 212, 104)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                 const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                
                                 Text(
                                  '4.4',
                                  style: GoogleFonts.inter(
                                      fontSize: 8, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
               Text(
                'Heading',
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
               Text(
                'Lorem Ipsum is simply dummy text of the printing',
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text(
                    '₹ 1,200',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: const Color.fromARGB(255, 121, 30, 233)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                   Text(
                    '₹1,200',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  ),
                 
                ],
              ),
              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}
