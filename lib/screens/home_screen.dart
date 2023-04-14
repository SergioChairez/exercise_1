import 'package:flutter/material.dart';

import 'package:exercise_1/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Background(),

          _HomeBody()

        ],
      ),
      //bottomNavigationBar: CustomBottomNavigatorBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),

          CardTable(),
        ],
      ),
    );
  }
}

