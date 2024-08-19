import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geeta_shop/constans.dart';
import 'package:geeta_shop/modules/HomeScreen/cubit/homescreen_cubit.dart';
import 'package:geeta_shop/modules/HomeScreen/widgets/gridItem.dart';
import 'package:geeta_shop/modules/HomeScreen/widgets/homeAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomescreenCubit>(
      create: (context) => HomescreenCubit(),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: HomeAppbar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "FILTER & SORT",
                        style: TextStyle(
                            fontFamily: Constans.mainFont,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/svgs/filter-edit-svgrepo-com.svg"),
                    SizedBox(
                      width: 182,
                    ),
                    SvgPicture.asset("assets/svgs/Grid View.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assets/svgs/Full View.svg")
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: BlocBuilder<HomescreenCubit, HomeScreenState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (state.allproducts == null) {
                      return Text("No Products");
                    }
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: state.allproducts!.length,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () async {
                                context
                                    .read<HomescreenCubit>()
                                    .getSingleProduct(
                                        context, state.allproducts![index]);
                                Navigator.of(context).pushNamed("item screen");
                              },
                              child: GridItem(
                                item: state.allproducts![index],
                              ),
                            ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
