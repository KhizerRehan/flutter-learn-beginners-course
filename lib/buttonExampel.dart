import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {

  String buttonText;
  bool checkboxValue;
  int radioValue;
  double sliderDefaultValue;
  bool switchBool;

  @override
  void initState() {
    buttonText = 'Initial text';
    checkboxValue = false;
    radioValue = -1;
    sliderDefaultValue = 20.0;
    switchBool= false;
  }

  updateState(value) {
    setState(() {
      buttonText = value;
    });
  }

  updateBooleanState(bool value) {
    setState(() {
      checkboxValue = value;
      print(value);
    });
  }

  updateRadioState(int value) {
    setState(() {
      radioValue = value;
      print(value);
    });
  }

  updateSliderValue(double value) {
    setState(() {
      sliderDefaultValue = value;
      print('value is $value');
    });
  }


  updateSwitchState(bool value) {
    setState(() {
      switchBool = value;
      print(value);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.red,
          title: new Text('Button Example'),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(onPressed: () {
              updateState('Pressed Raise Button');
            }, child: new Text('This Is Raised Button'),),
            new FlatButton(onPressed: () {
              updateState('Pressed Flat Button');
            }, child: new Text('This Is Flat Button'),),
            new Text(buttonText),
            new Checkbox(value: checkboxValue,
                onChanged: (bool checked) {
                  updateBooleanState(checked);
                }),
            new Radio(
                value: 1, groupValue: radioValue, onChanged: (int change) {
              updateRadioState(change);
            }),
            new Radio(
                value: 2, groupValue: radioValue, onChanged: (int change) {
              updateRadioState(change);
            }),
            new Radio(
                value: 3, groupValue: radioValue, onChanged: (int change) {
              updateRadioState(change);
            }),
            new Slider(
                value: sliderDefaultValue,
                min: 2.0,
                max:100.0,
                onChanged: (double value) {
                  updateSliderValue(value);
                }),
            new Text('$sliderDefaultValue'),
            new Switch(value: switchBool, onChanged: (bool toggleValue){
                updateSwitchState(toggleValue);
            })
          ],
        ),
      ),
    );
  }
}
