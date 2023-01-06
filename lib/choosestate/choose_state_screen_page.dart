import 'package:airqualityapp/choosestate/models/state_data.dart';
import 'package:airqualityapp/choosestate/models/state_list.dart';
import 'package:airqualityapp/loading/loading_widget.dart';
import 'package:airqualityapp/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseStateScreenPage extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _stateData = ref.watch(stateDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a state"),
      ),
      body: _stateData.when(
          data: (StateList? stateList){
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/india.png",
                                  )
                              )
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: stateList!.stateDataList!.length,
                        itemBuilder: (BuildContext context, int index){
                          StateData currentStateName = stateList.stateDataList![index];
                          return Text("State name : ${currentStateName.stateName}");
                        }
                    )
                  ],
                ),
              ),
            );
          },
          error: (dynamic errObj, StackTrace stackTrace){
            return Center(
              child: Text("Something went wrong"),
            );
          },
          loading: (){
            return LoadingWidget();
          }
      )
    );
  }

}