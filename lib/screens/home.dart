import 'package:cubit2/bussines_logic/cubit/condition_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ConditionCubit, ConditionState>(
              builder: (context, state) {
                if (state is ConditionError) {
                  return Container(
                    color: Colors.red,
                    child: Text(
                      state.errorMsg,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                } else if (state is ConditionWarning) {
                  return Container(
                    color: Colors.yellow,
                    child: Text(
                      state.warningMsg,
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }
                else if (state is ConditionInfo) {
                  return Container(
                    color: Colors.blue,
                    child: Text(
                      state.infoMsg,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: BlocProvider.of<ConditionCubit>(context).makeError,
                  iconSize: 40,
                  icon: const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () => BlocProvider.of<ConditionCubit>(context)
                      .makeInfo("Got Data Succesfully"),
                  iconSize: 40,
                  icon: const Icon(
                    Icons.info,
                    color: Colors.blue,
                  ),
                ),
                IconButton(
                  onPressed:
                      BlocProvider.of<ConditionCubit>(context).makeWarning,
                  iconSize: 40,
                  icon: const Icon(
                    Icons.warning,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
