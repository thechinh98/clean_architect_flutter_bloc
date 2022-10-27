import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'custom_snack_bar.dart';
import 'tap_bounce_container.dart';

OverlayEntry? _previousEntry;

Future<void> showServerErrorPopUp(BuildContext context) async {
  await _showErrorSnackBar(
    context,
    S().server_error,
    S().trying_to_fix,
    notificationType: NotificationType.error,
  );
}

Future<void> showUnknownErrorPopUp(BuildContext context) async {
  await _showErrorSnackBar(
    context,
    S().something_went_wrong,
    S().check_your_internet_connection,
    notificationType: NotificationType.error,
  );
}

Future<void> showSuccessBanner({
  required BuildContext context,
  required String tittle,
  required String content,
}) async {
  await _showErrorSnackBar(
    context,
    tittle,
    content,
    notificationType: NotificationType.success,
  );
}

Future<void> _showErrorSnackBar(
  BuildContext context,
  String title,
  String message, {
  Duration showOutAnimationDuration = const Duration(milliseconds: 800),
  Duration hideOutAnimationDuration = const Duration(milliseconds: 550),
  Duration displayDuration = const Duration(milliseconds: 1500),
  double additionalTopPadding = 16.0,
  VoidCallback? onTap,
  OverlayState? overlayState,
  double leftPadding = 16,
  double rightPadding = 16,
  required NotificationType notificationType,
}) async {
  overlayState ??= Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (BuildContext context) {
      return TopSnackBar(
        onDismissed: () {
          if (overlayEntry.mounted && _previousEntry == overlayEntry) {
            overlayEntry.remove();
            _previousEntry = null;
          }
        },
        title: title,
        message: message,
        showOutAnimationDuration: showOutAnimationDuration,
        hideOutAnimationDuration: hideOutAnimationDuration,
        displayDuration: displayDuration,
        additionalTopPadding: additionalTopPadding,
        onTap: onTap,
        leftPadding: leftPadding,
        rightPadding: rightPadding,
        // child: child,
        notificationType: notificationType,
      );
    },
  );

  _previousEntry?.remove();
  overlayState?.insert(overlayEntry);
  _previousEntry = overlayEntry;
}

/// Widget that controls all animations
class TopSnackBar extends StatefulWidget {
  const TopSnackBar({
    Key? key,
    // required this.child,
    required this.onDismissed,
    required this.title,
    required this.message,
    required this.showOutAnimationDuration,
    required this.hideOutAnimationDuration,
    required this.displayDuration,
    required this.additionalTopPadding,
    this.onTap,
    this.leftPadding = 16,
    this.rightPadding = 16,
    required this.notificationType,
  }) : super(key: key);

  // final Widget child;
  final VoidCallback onDismissed;
  final Duration showOutAnimationDuration;
  final Duration hideOutAnimationDuration;
  final Duration displayDuration;
  final double additionalTopPadding;
  final VoidCallback? onTap;
  final double leftPadding;
  final double rightPadding;
  final String title;
  final String message;
  final NotificationType notificationType;

  @override
  _TopSnackBarState createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<TopSnackBar>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> offsetAnimation;
  late AnimationController animationController;
  late double? topPosition;

  @override
  void initState() {
    topPosition = widget.additionalTopPadding;
    _setupAndStartAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> _setupAndStartAnimation() async {
    animationController = AnimationController(
      vsync: this,
      duration: widget.showOutAnimationDuration,
      reverseDuration: widget.hideOutAnimationDuration,
    );

    Tween<Offset> offsetTween = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: const Offset(0.0, 0.0),
    );

    offsetAnimation = offsetTween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
        reverseCurve: Curves.linearToEaseOut,
      ),
    )..addStatusListener((AnimationStatus status) async {
        if (status == AnimationStatus.completed) {
          await Future<void>.delayed(widget.displayDuration);
          if (mounted) {
            animationController.reverse();
            setState(() {
              topPosition = 0;
            });
          }
        }

        if (status == AnimationStatus.dismissed) {
          if (mounted) {
            widget.onDismissed.call();
          }
        }
      });

    if (mounted) {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: widget.hideOutAnimationDuration * 1.5,
      curve: Curves.linearToEaseOut,
      top: topPosition,
      left: widget.leftPadding,
      right: widget.rightPadding,
      child: SlideTransition(
        position: offsetAnimation,
        child: SafeArea(
          child: TapBounceContainer(
            onTap: () {
              if (mounted) {
                animationController.reverse();
              }
            },
            message: widget.message,
            title: widget.title,
            // child: widget.child,
            notificationType: widget.notificationType,
          ),
        ),
      ),
    );
  }
}
