import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/view/neuBox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicUI extends StatefulWidget {
  const MusicUI({super.key});

  @override
  State<MusicUI> createState() => _MusicUIState();
}

class _MusicUIState extends State<MusicUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeumBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text("P L A Y L I S T"),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeumBox(child: Icon(Icons.menu)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                NeumBox(
                    child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                          "assets/images/jordan-cormack-79RuacUiXUI-unsplash.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Iraaday",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Abdul Hannan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "0:00",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("3:20", style: TextStyle(fontWeight: FontWeight.w600))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                NeumBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.41,
                    barRadius: const Radius.circular(5),
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                          child: NeumBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: NeumBox(
                                child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            )),
                          )),
                      Expanded(
                          child: NeumBox(
                              child: Icon(
                        Icons.skip_next,
                        size: 32,
                      )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lyrics",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Click here and enjoy!",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade700),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.download_outlined,
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
