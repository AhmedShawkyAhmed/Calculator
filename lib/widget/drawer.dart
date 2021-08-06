import 'package:calculator/colors.dart';
import 'package:calculator/screens/scientific.dart';
import 'package:calculator/screens/standard.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget calculatorDrawer(BuildContext context){
  return Drawer(
    child: Container(
      color: darkGrey,
      child: Padding(
        padding: const EdgeInsets.only(top: 50,left: 10,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calculator',style: TextStyle(color: yellow,fontSize: 30.sp,),),
            ListTile(
              leading: Icon(Icons.calculate_outlined,color: white,size: 7.w,),
              title: Text('Standard',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Standard())),
            ),
            ListTile(
              leading: Icon(Icons.science_sharp,color: white,size: 7.w,),
              title: Text('Scientific',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Scientific())),
            ),
            Text('Converter',style: TextStyle(color: yellow,fontSize: 30.sp,),),
            ListTile(
              leading: Icon(Icons.square_foot_outlined,color: white,size: 7.w,),
              title: Text('Length',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.workspaces_outline,color: white,size: 7.w,),
              title: Text('Weight',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.thermostat_outlined,color: white,size: 7.w,),
              title: Text('Temperature',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.timer,color: white,size: 7.w,),
              title: Text('Time',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.speed,color: white,size: 7.w,),
              title: Text('Speed',style: TextStyle(color: white,fontSize: 20.sp),),
              onTap: (){},
            ),
          ],
        ),
      ),
    ),
  );
}