import 'package:agite_se/pages/user_card.dart';
import 'package:agite_se/shared/models/user.dart';
import 'package:flutter/material.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Center(
                child: Text(
                  "Ranking Semanal",
                  style: TextStyle(
                    color: Color(0xff00444f),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ListView.separated(
                itemCount: myUsers.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: size.height * 0.03,
                  );
                },
                itemBuilder: (context, index) {
                  return UserCard(
                    user: myUsers[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
