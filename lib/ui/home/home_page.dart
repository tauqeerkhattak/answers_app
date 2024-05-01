import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? label;
  // final List<ModelVideo> videos;
  final EdgeInsets? titlePadding;
  const HomePage({
    super.key,
    this.title,
    this.subtitle,
    this.label,
    // required this.videos,
    this.titlePadding,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAudioView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), //TODO Implementar AppBar
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.label ?? "",
                // style:
                // context.textTheme.titleMedium?.copyWith(color: Colors.grey),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? "",
                    // style: context.textTheme.titleLarge
                    //     ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subtitle ?? "",
                    // style: context.textTheme.titleLarge
                    //     ?.copyWith(color: Colors.grey),
                  )
                ],
              ), //.withPadding(const EdgeInsets.only(left: 16))
            ],
          ), //.withPadding(widget.titlePadding ?? const EdgeInsets.only(left: 16)),
          const Divider(
            height: 0,
            color: Color(0xff0038B8),
          ), //.withPadding(const EdgeInsets.only(top: 16)),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     FilledButton(
                //         style: FilledButton.styleFrom(
                //             backgroundColor: !isAudioView
                //                 ? const Color(0xffebeffa)
                //                 : Colors.transparent,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(8.0),
                //             ),
                //             fixedSize: const Size(114, 43)),
                //         onPressed: () {
                //           setState(() {
                //             isAudioView = false;
                //           });
                //         },
                //         child: Text(
                //           "Videos",
                //           style: TextStyle(
                //               color: !isAudioView
                //                   ? const Color(0xff0038B8)
                //                   : const Color(0xff7f9bdb)),
                //         )),
                //     FilledButton(
                //         style: FilledButton.styleFrom(
                //             backgroundColor: isAudioView
                //                 ? const Color(0xffebeffa)
                //                 : Colors.transparent,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(8.0),
                //             ),
                //             fixedSize: const Size(114, 43)),
                //         onPressed: () {
                //           setState(() {
                //             isAudioView = true;
                //           });
                //         },
                //         child: Text(
                //           "Músicas",
                //           style: TextStyle(
                //               color: isAudioView
                //                   ? const Color(0xff0038B8)
                //                   : const Color(0xff7f9bdb)),
                //         ))
                //   ],
                // ), //.withPadding(
                // //onst EdgeInsets.only(left: 62, top: 47, right: 24)),
                // const SizedBox(
                //   height: 691,
                //   child: VerticalDivider(
                //     thickness: 1,
                //     indent: 0,
                //     endIndent: 0,
                //     color: Color(0xff0038B8),
                //   ),
                // ),
                GridContentView(
                  isAudioView: isAudioView,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GridContentView extends StatelessWidget {
  final bool isAudioView;
  const GridContentView({super.key, required this.isAudioView});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1140,
      child: GridView.count(
        crossAxisCount: isAudioView ? 5 : 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: List.generate(10, (index) {
          return Container(
            height: 300,
            width: isAudioView ? 200 : 500,
            color: Colors.red,
          );
        }),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   final String? title;
//   final String? subtitle;
//   final String? label;
//   // final List<ModelVideo> videos;
//   final EdgeInsets? titlePadding;
//   const HomePage({
//     super.key,
//     this.title,
//     this.subtitle,
//     this.label,
//     // required this.videos,
//     this.titlePadding,
//   });
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool isAudioView = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(), //TODO Implementar AppBar
//       body: Column(
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 widget.label ?? "ABC",
//                 // style:
//                 // context.textTheme.titleMedium?.copyWith(color: Colors.grey),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     widget.title ?? "DEF",
//                     // style: context.textTheme.titleLarge
//                     //     ?.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     widget.subtitle ?? "GHI",
//                     // style: context.textTheme.titleLarge
//                     //     ?.copyWith(color: Colors.grey),
//                   )
//                 ],
//               ), //.withPadding(const EdgeInsets.only(left: 16))
//             ],
//           ), //.withPadding(widget.titlePadding ?? const EdgeInsets.only(left: 16)),
//           const Divider(
//             height: 0,
//             color: Color(0xff0038B8),
//           ), //.withPadding(const EdgeInsets.only(top: 16)),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     FilledButton(
//                       style: FilledButton.styleFrom(
//                         backgroundColor: !isAudioView
//                             ? const Color(0xffebeffa)
//                             : Colors.transparent,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8.0),
//                         ),
//                         fixedSize: const Size(114, 43),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           isAudioView = false;
//                         });
//                       },
//                       child: Text(
//                         "Videos",
//                         style: TextStyle(
//                             color: !isAudioView
//                                 ? const Color(0xff0038B8)
//                                 : const Color(0xff7f9bdb)),
//                       ),
//                     ),
//                     FilledButton(
//                         style: FilledButton.styleFrom(
//                             backgroundColor: isAudioView
//                                 ? const Color(0xffebeffa)
//                                 : Colors.transparent,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                             ),
//                             fixedSize: const Size(114, 43)),
//                         onPressed: () {
//                           setState(() {
//                             isAudioView = true;
//                           });
//                         },
//                         child: Text(
//                           "Músicas",
//                           style: TextStyle(
//                               color: isAudioView
//                                   ? const Color(0xff0038B8)
//                                   : const Color(0xff7f9bdb)),
//                         ))
//                   ],
//                 ), //.withPadding(
//                 //const EdgeInsets.only(left: 62, top: 47, right: 24)),
//                 const SizedBox(
//                   height: 691,
//                   child: VerticalDivider(
//                     thickness: 1,
//                     indent: 0,
//                     endIndent: 0,
//                     color: Color(0xff0038B8),
//                   ),
//                 ),
//                 Expanded(
//                   child: GridContentView(isAudioView: isAudioView),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class GridContentView extends StatelessWidget {
//   final bool isAudioView;
//   const GridContentView({super.key, required this.isAudioView});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: GridView.count(
//             crossAxisCount: isAudioView ? 5 : 3,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//             shrinkWrap: true,
//             children: List.generate(10, (index) {
//               return Container(
//                 width: isAudioView ? 200 : 500,
//                 color: Colors.red,
//               );
//             }),
//           ),
//         ),
//       ],
//     );
//   }
// }
