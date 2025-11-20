import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled}
enum IconPosition {left, right}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
    this.onPressed,
  });

  Color _backgroundColor(){
    switch (type) {
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
       return Colors.grey;
      default:
      return Colors.blue;
    }
  }

  bool get _isDisabled => type == ButtonType.disabled;

  @override
  Widget build(BuildContext context) {
    final bg = _backgroundColor();
    return Opacity(
      opacity: _isDisabled ? 0.6 : 1.0,
      child: InkWell(
        onTap: _isDisabled ? null : onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
                margin: const EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  color: bg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (iconPosition == IconPosition.left)
                        Padding(
                          padding: const EdgeInsetsDirectional.all(10),
                          child: Icon(
                            icon,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          label,
                          style: TextStyle(
                            color: Colors.black,                      
                          ),
                        ),    
                      if (iconPosition == IconPosition.right)
                        Padding(
                          padding: const EdgeInsetsDirectional.all(10),
                          child: Icon(
                            icon,
                            color: Colors.black,
                          ),
                        ),     
                    ],
                  ),
                ),
              ),
            ),
      );
      
  }
}
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Custom buttons'),
          backgroundColor: Colors.grey[100],
        ),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            CustomButton(label: 'Submit', icon: Icons.check, onPressed: () {}),
            CustomButton(label: 'Time', icon: Icons.access_time, type: ButtonType.secondary, iconPosition: IconPosition.right, onPressed: () {}),
            CustomButton(label: 'Account', icon: Icons.account_circle, type: ButtonType.disabled, iconPosition: IconPosition.right),
          ],
        ),
      ),
     ), 
    ),
  );
}