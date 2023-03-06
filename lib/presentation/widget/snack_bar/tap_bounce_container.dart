import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';
import 'custom_snack_bar.dart';

class TapBounceContainer extends StatefulWidget {
  const TapBounceContainer({
    Key? key,
    // required this.child,
    required this.title,
    required this.message,
    this.onTap,
    required this.notificationType,
  }) : super(key: key);

  // final Widget child;
  final VoidCallback? onTap;
  final String title;
  final String message;
  final NotificationType notificationType;

  @override
  State<TapBounceContainer> createState() => _TapBounceContainerState();
}

class _TapBounceContainerState extends State<TapBounceContainer>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  final Duration animationDuration = const Duration(milliseconds: 200);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
      upperBound: 0.04,
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      // onTapDown: _onTapDown,
      // onTapUp: _onTapUp,
      // onPanEnd: _onPanEnd,
      child: Transform.scale(
        scale: _scale,
        child: _getCustomSnackbarWidget(),
      ),
    );
  }

  CustomSnackBarWidget _getCustomSnackbarWidget() {
    switch (widget.notificationType) {
      case NotificationType.error:
        return CustomSnackBarWidget.error(
          title: widget.title,
          message: widget.message,
          onTapClose: () async {
            await _closeSnackBar();
          },
        );
      case NotificationType.success:
        return CustomSnackBarWidget.success(
          title: widget.title,
          message: widget.message,
          onTapClose: () async {
            await _closeSnackBar();
          },
          backgroundColor: kSecondPrimaryColor,
        );
      case NotificationType.info:
        return CustomSnackBarWidget.info(
          title: widget.title,
          message: widget.message,
          onTapClose: () async {
            await _closeSnackBar();
          },
        );
    }
  }

  // void _onTapDown(TapDownDetails details) {
  //   logi(message: '_onTapDown ');
  //   // if (mounted) {
  //   //   _controller.forward();
  //   // }
  // }
  //
  // Future<void> _onTapUp(TapUpDetails details) async {
  //   logi(message: 'ontap up');
  //   // await _closeSnackBar();
  // }
  //
  // Future<void> _onPanEnd(DragEndDetails details) async {
  //   logi(message: '_onPanEnd ');
  //   // await _closeSnackBar();
  // }

  Future<void> _closeSnackBar() async {
    if (mounted) {
      _controller.reverse();
      await Future<void>.delayed(animationDuration);
      widget.onTap?.call();
    }
  }
}
