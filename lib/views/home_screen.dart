import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../bloc/home_bloc.dart';
import '../routes/app_pages.dart';
import '/styles/fonts.dart';
import '/widgets/custom_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void initState() {
    context.read<HomeBloc>().add(GetHomeLanguage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                CustomInputFormField(
                  controller: _controller,
                  hintText: "Search a language",
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Popular Languages",
                  style: AppFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return Center(
                        child: Lottie.asset(
                          'assets/animations/loading.json',
                          // width: 200,
                          // height: 200,
                          // fit: BoxFit.contain,
                        ),
                      );
                    }

                    if (state is HomeLoaded) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.languages.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              context.push(
                                AppPages.alphabets,
                                extra: {
                                  'language': state.languages[index].toJson(),
                                },
                              );
                            },
                            title: Text(
                              state.languages[index].name,
                            ),
                          );
                        },
                      );
                    } else if (state is HomeError) {
                      return Center(
                        child: Text(
                          state.message,
                        ),
                      );
                    }

                    return Column(
                      children: [
                        Container(),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
