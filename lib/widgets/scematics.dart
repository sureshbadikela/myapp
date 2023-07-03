import 'package:flutter/material.dart';

/*In Flutter, the Semantics class is used to provide accessibility information for widgets in the widget tree. It allows you to describe the semantics of your app's user interface,
 making it accessible to users with disabilities or using assistive technologies. */

class MyScematics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Button',
      hint: 'Double tap to activate',
      enabled: true,
      onTap: () {
        // Perform action when the button is tapped
        // This will be announced to assistive technologies
        print('Button tapped');
      },
      child: ElevatedButton(
        child: Text('Click Me'),
        onPressed: () {
          // Handle button press
          print('Button pressed');
        },
      ),
    );
  }
}

