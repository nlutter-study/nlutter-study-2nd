import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class InterestButton extends StatefulWidget {
  const InterestButton({
    super.key,
    required this.interest,
    required this.onPressInterest,
  });

  final String interest;
  final Function onPressInterest;

  @override
  State<InterestButton> createState() => _InterestButtonState();
}

class _InterestButtonState extends State<InterestButton> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
      widget.onPressInterest();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Stack(
        children: [
          AnimatedContainer(
            alignment: Alignment.bottomLeft,
            duration: const Duration(
              milliseconds: 300,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size16,
              horizontal: Sizes.size24,
            ),
            width: 200,
            height: 100,
            decoration: BoxDecoration(
                color:
                    _isSelected ? Theme.of(context).primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(
                  Sizes.size16,
                ),
                border: Border.all(
                  color: Colors.black.withOpacity(0.1),
                ),),
            child: Text(
              widget.interest,
              style: TextStyle(
                color: _isSelected ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 300,
              ),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: _isSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  Sizes.size16,
                ),
                border: Border.all(
                  color: _isSelected
                      ? Colors.white
                      : Colors.black.withOpacity(0.1),
                ),
              ),
              child: _isSelected
                  ? const Icon(
                      Icons.check,
                      color: Colors.black,
                      size: Sizes.size16,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
