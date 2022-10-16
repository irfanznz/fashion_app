import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/occasion.dart';

class TemperatureSlider extends StatefulWidget {
  @override
  State<TemperatureSlider> createState() => _TemperatureSliderState();
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  double temperature = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/slider.png'),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Colors.white,
                  activeTrackColor: Colors.white.withOpacity(0),
                  overlayColor: Colors.grey.shade100.withOpacity(0.5),
                  inactiveTrackColor: Colors.white.withOpacity(0),
                  thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 20, elevation: 3),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                ),
                child: Slider(
                  value: temperature,
                  min: -20,
                  max: 40,
                  onChanged: (double newValue) {
                    setState(
                      () {
                        temperature = newValue;
                        Provider.of<Occasion>(context, listen: false)
                            .setTemperature(newValue);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "-20 °C",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "${temperature.round()} °C",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
              Text(
                "40 °C",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
