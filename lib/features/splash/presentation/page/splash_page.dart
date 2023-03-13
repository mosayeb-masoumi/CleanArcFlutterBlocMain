
import 'package:clean_arc_flutter_test/features/home_page/presentation/page/home_page.dart';
import 'package:clean_arc_flutter_test/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc_flutter_test/di.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SplashCubit(sl()))
    ], child: ISplashPage());
  }
}

class ISplashPage extends StatelessWidget {
  const ISplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Text("Splash Page" , style: TextStyle(color:Colors.red , fontSize: 20),),

             BlocConsumer<SplashCubit , SplashState>(
               builder: (context , state){
                 if(state is SplashLoading){
                   return CircularProgressIndicator(color: Colors.blue,);
                 }else{
                   return Container();
                 }
               },
               listener: (context , state){
                 if(state is SplashLoaded){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const HomePage()),
                   );
                 }
               },
             ),

            ElevatedButton(onPressed: (){
              context.read<SplashCubit>().getSplashData();
            }, child: Text("Get allow to start home"))


          ],
        ),
      ),
    );
  }
}

