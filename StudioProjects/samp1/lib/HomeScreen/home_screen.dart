import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samp1/HomeScreen/cubit/home_screen_cubit.dart';

class LocalStorage extends StatelessWidget {
  const LocalStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("hello >>>..");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage Demo'),
      ),
      body: BlocProvider(
        create: (context) => HomeScreenCubit(context),
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            final cubit = context.read<HomeScreenCubit>();
            debugPrint("hello >>>..2");

            return Column(
              children: [
                Expanded(
                  flex: 7,
                  child: ListView.builder(
                    itemCount: cubit.list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "${index + 1}.",
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(cubit.list[index]),
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                cubit.editItem(index);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                cubit.deleteItem(index);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: cubit.textCtr,
                    onChanged: (value) {
                      cubit.valueCheck();
                    },
                    decoration: InputDecoration(
                        suffixIcon: cubit.valueChange == true
                            ? const Icon(Icons.mic)
                            : InkWell(
                                onTap: () => cubit.addItem(),
                                child: const Icon(Icons.send)),
                        hintText: 'Enter Text',
                        border: const OutlineInputBorder()),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
