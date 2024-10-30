import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/info_tile.dart';
import '../widgets/vehicle_info_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isButtonPressed = false; 

  void buttonPressed() {
    setState(() {
      isButtonPressed = !isButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              vehicleInfoCard(ht),
              const SizedBox(height: 10),
              CustomButton(
                height: ht,
                onPressed: buttonPressed,
                isButtonPressed: isButtonPressed,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: infoTile(
                        title: 'Doors',
                        subtitle: 'Unlocked',
                        icon: Icons.lock_outline_sharp,
                        ht: ht,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: infoTile(
                        title: 'Honk & Flash',
                        subtitle: 'off',
                        icon: Icons.volume_up_outlined,
                        ht: ht,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.blue,
        ),
      ),
    );
  }
}