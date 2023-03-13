

import 'package:clean_arc_flutter_test/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:clean_arc_flutter_test/di.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeCubit(sl()))
        ], child: IHomePage());
  }
}

class IHomePage extends StatelessWidget {
  const IHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("Home Page" , style: TextStyle(color:Colors.red , fontSize: 20),),

              BlocConsumer<HomeCubit , HomeState>(
                  builder: (context , state){
                   if(state is HomeLoading){
                     return const CircularProgressIndicator(color: Colors.red,);
                   }else if(state is HomeLoaded){
                     return Text(state.model.title);
                   }else{
                     return Container();
                   }
                  },
                  listener: (context , state){
                    if(state is HomeLoaded){
                      var a = 5;
                    }
                  }),

              ElevatedButton(onPressed: (){
                context.read<HomeCubit>().getHomeData();
              }, child: Text("get data"))

            ],
          ),

        ),
      ),
    );
  }
}


