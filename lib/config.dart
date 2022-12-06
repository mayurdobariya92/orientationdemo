import 'package:flutter/material.dart';

class Config
{
  static double totalwidth=0,totalheight=0,appbarheight=0,statusbarheight=0,bottomheight=0,bodyheight=0;
  Config(BuildContext context)
  {
    totalheight=MediaQuery.of(context).size.height;
    totalwidth=MediaQuery.of(context).size.width;
    appbarheight=kToolbarHeight;
    statusbarheight=MediaQuery.of(context).padding.top;
    bottomheight=MediaQuery.of(context).padding.bottom;
    bodyheight=totalheight-appbarheight-statusbarheight-bottomheight;
  }
}
