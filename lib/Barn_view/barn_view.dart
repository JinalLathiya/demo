// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'barn_view_cubit.dart';
// import 'barn_view_state.dart';
//
// class BarnViewPage extends StatefulWidget {
//   const BarnViewPage({super.key});
//
//   @override
//   State<BarnViewPage> createState() => BarnViewPageState();
// }
//
// class BarnViewPageState extends State<BarnViewPage> {
//   TextEditingController addController = TextEditingController();
//   GlobalKey<FormState> addKey = GlobalKey<FormState>();
//   int text = 0;
//   Widget textFieldView = Container();
//   int selectedIndex = 0;
//
//   // int addButtonIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Barn View List"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             ListView.builder(
//                 itemCount: barnList.length,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, i) {
//                   final data = barnList[i];
//                   return BlocBuilder<BarnViewCubit, BarnViewState>(
//                       builder: (context, state) {
//                     if (state.addController?.text != null) {
//                       text = int.parse(state.addController?.text ?? "");
//                     }
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(data),
//                           selectedIndex == i
//                               ? Expanded(child: textFieldView)
//                               : Container(),
//                           InkWell(
//                             onTap: () {
//                               selectedIndex = i;
//                               _showDialog(
//                                   context,
//                                   state.addController ??
//                                       TextEditingController());
//                               setState(() {});
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 15, vertical: 8),
//                               decoration: BoxDecoration(
//                                   color: Colors.blue,
//                                   borderRadius: BorderRadius.circular(8)),
//                               child: const Text(
//                                 "Add",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   });
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future _showDialog(
//       BuildContext buildContext, TextEditingController controller) {
//     return showDialog(
//       context: buildContext,
//       builder: (builder) {
//         return AlertDialog(
//           title: const Text("How many bin's you want to add in Barn ?"),
//           content: TextFormField(
//             key: addKey,
//             controller: controller,
//             keyboardType: TextInputType.number,
//             decoration: const InputDecoration(
//               hintText: "Add a Number",
//             ),
//             validator: (val) {
//               if (val!.isEmpty) {
//                 return "Add a Value";
//               }
//               return null;
//             },
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 if (controller.text.isNotEmpty) {
//                   int input = int.parse(controller.text);
//                   textFieldView = _textFieldViewList(idx: input);
//                   log('Value -> $input');
//                   setState(() {});
//                   Navigator.pop(context);
//                 }
//                 controller.clear();
//               },
//               child: const Text("Generate"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget _textFieldViewList({int? idx}) {
//     List<TextEditingController> controller =
//         List.generate(idx ?? 0, (idx) => TextEditingController());
//     return ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         itemCount: idx,
//         itemBuilder: (context, i) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Bin ${i + 1}"),
//               SizedBox(
//                 width: 120,
//                 child: TextField(
//                   textInputAction: TextInputAction.next,
//                   controller: controller[i],
//                   decoration: InputDecoration(
//                     hintText: "field no ${i + 1}",
//                   ),
//                 ),
//               ),
//             ],
//           );
//         });
//   }
// }
//
// List<String> barnList = [
//   "Barn 1",
//   "Barn 2",
//   "Barn 3",
//   "Barn 4",
//   "Barn 5",
//   "Barn 6",
// ];
// List<String> binList = [
//   "Bin 1",
//   "Bin 2",
//   "Bin 3",
// ];
