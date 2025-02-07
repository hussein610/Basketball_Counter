import 'package:flutter/material.dart';

class BasketballCounts extends StatefulWidget {
  const BasketballCounts({super.key});

  @override
  State<BasketballCounts> createState() => _BasketballCountsState();
}

class _BasketballCountsState extends State<BasketballCounts> {
  int resultA = 0;
  int resultB = 0;
  //String winer = "";
  String winerTeam() {
    if (resultA > resultB) {
      return "Team A🎉";
    } else if (resultA < resultB) {
      return "Team B🎉";
    } else {
      return "";
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 220,
                      width: 120,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "$resultA",
                          style: TextStyle(fontSize: 150),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultA += 1;
                        });
                      },
                      child: Text(
                        "Add 1 Pont",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultA += 2;
                        });
                      },
                      child: Text("Add 2 Pont",
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultA += 3;
                        });
                      },
                      child: Text("Add 3 Pont",
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    )
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 220,
                      width: 120,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "$resultB",
                          style: TextStyle(fontSize: 150),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultB += 1;
                        });
                      },
                      child: Text(
                        "Add 1 Pont",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultB += 2;
                        });
                      },
                      child: Text("Add 2 Pont",
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resultB += 3;
                        });
                      },
                      child: Text("Add 3 Pont",
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder()),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    resultA = 0;
                    resultB = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Text("The Winer to this moment is: ${winerTeam()}")
          ],
        ),
      ),
    );
  }
}

main() {
  runApp(BasketballCounts());
}
