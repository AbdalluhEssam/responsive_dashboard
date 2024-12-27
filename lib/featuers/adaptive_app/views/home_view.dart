import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xffDBDBDB),
        appBar: MediaQuery.sizeOf(context).width - 32  < 900
            ? AppBar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              )
            : null,
        drawer: CustomDrawer(),
        body: HomeViewBody());
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget{
//   const CustomAdaptiveAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if(constraints.maxWidth > 900){
//         return SizedBox();
//     }
//       return AppBar(
//       backgroundColor: Colors.black,
//       foregroundColor: Colors.white,
//     );
//     },);
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(56);
// }
