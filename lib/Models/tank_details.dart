import 'package:flutter/material.dart';
import 'package:water_monster_v2/Screens/tank_settings.dart';

class Tank_Details extends StatelessWidget {
  const Tank_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(10.0)),
              const Text(
                'Roof Tank',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Nunito',
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const T_settings(),
                        ),
                      ),
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 35,
                  ))
            ],
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(9.0)),
              Icon(
                Icons.waves,
                color: Colors.grey,
                size: 19,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                '2400 liter (48 %)',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(9.0)),
              Icon(
                Icons.watch_later_outlined,
                color: Colors.grey,
                size: 19,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                '2 hours ago',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
          Image.asset('Assets/png/Tank.png'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Text(
                  'Sensor State',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
