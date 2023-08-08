import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paramount/components/colors.dart';

Widget buildReUsableButton(String buttonName, String buttonType, void Function()? func){
  return GestureDetector(
    onTap: func,
    child: Container(
      width: 396.w, height: 43.h,
      margin: EdgeInsets.only(left: 15.3.w, right: 15.3.w),
      decoration: BoxDecoration(
          color: buttonType=='yellow'?const Color(0xFFF1C111):const Color(0xFFD4D4D4),
          borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(child: Text(buttonName, style: TextStyle(
          color: buttonType=='yellow'?const Color(0xFF000000):const Color(0xFF606060),
          fontSize: 16.sp, fontWeight: FontWeight.w400),),),
    ),
  );
}

Widget buildOnBoardingButton(String buttonName, void Function()? func){
  return GestureDetector(
    onTap: func,
    child: Container(
      width: 396.w, height: 44.h,
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      decoration: BoxDecoration(
        color: Styling.primaryThemeColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(child: Text(buttonName, style: TextStyle(
          color: const Color(0xFF000000),
          fontSize: 16.sp, fontWeight: FontWeight.w500),),),
    ),
  );
}

Widget buildTextField(String hintText, String textType, String iconName,
    void Function(String value)? func
    ){
  return
    Container(
      width: 396.w, height: 48.h, margin: EdgeInsets.only(bottom: 6.h),
      child: TextField(
        onChanged: (value)=>func!(value),
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Styling.textFieldThemeColor, width: 0.96.w
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Styling.primaryThemeColor, width: 1.5.w
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
            hintStyle: TextStyle(
                fontSize:14.sp, fontWeight: FontWeight.w400,
                color: const Color(0xFF333333)
            ),
            suffixIcon: textType=='password'? Container(
                width: 22.w, height: 22.h, margin: EdgeInsets.only(right: 12.w,),
                child: Image.asset('assets/icons/$iconName.png')):Container()
        ),
        style: TextStyle(
            fontSize:14.sp, fontWeight: FontWeight.w400,
            color: const Color(0xFF333333)
        ),
        autocorrect: false,
        obscureText: textType=='password'?true:false,
      ),
    );
}

Widget reUsableText(String text, double fontSizes){
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(text,
      style: TextStyle(color: Colors.grey.withOpacity(0.9),
          fontSize: fontSizes, fontWeight: FontWeight.normal
      ),
    ),
  );
}

AppBar buildAppBar(String text){
  return AppBar(
    backgroundColor: Styling.scaffoldThemeColor,
    title: Center(
      child: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: const Color(0xFF000000),
            fontSize: 16.sp, fontWeight: FontWeight.w600
        ),
      ),
    ),

  );
}

Widget reUsableIcons(String iconName, double height, double width){
  return GestureDetector(
    onTap: (){},
    child: SizedBox(
      height: height, width: width,
      child: Image.asset('assets/icons/$iconName.png'),
    ),
  );
}



