import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/assets.dart';
import '../../utils/color_constant.dart';
import '../../utils/dimension_constant.dart';
import 'package:auto_size_text/auto_size_text.dart';

enum NotificationType {
  error,
  success,
  info,
}

class CustomSnackBarWidget extends StatefulWidget {
  const CustomSnackBarWidget.success({
    Key? key,
    required this.message,
    required this.title,
    this.messagePadding = const EdgeInsets.symmetric(horizontal: 24),
    this.icon,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = const Color(0xff00E676),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
    this.onTapClose,
    this.notificationType = NotificationType.success,
  }) : super(key: key);

  const CustomSnackBarWidget.info({
    Key? key,
    required this.message,
    required this.title,
    this.messagePadding = const EdgeInsets.symmetric(horizontal: 24),
    this.icon,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = const Color(0xff2196F3),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
    this.onTapClose,
    this.notificationType = NotificationType.info,
  }) : super(key: key);

  const CustomSnackBarWidget.error({
    Key? key,
    required this.message,
    required this.title,
    this.messagePadding = const EdgeInsets.symmetric(horizontal: 24),
    this.icon,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = kErrorNotificationErrorColor,
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
    this.onTapClose,
    this.notificationType = NotificationType.error,
  }) : super(key: key);

  final String message;
  final String title;
  final Widget? icon;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int iconRotationAngle;
  final List<BoxShadow> boxShadow;
  final BorderRadius borderRadius;
  final double iconPositionTop;
  final double iconPositionLeft;
  final EdgeInsetsGeometry messagePadding;
  final double textScaleFactor;
  final Function()? onTapClose;
  final NotificationType notificationType;

  @override
  State<CustomSnackBarWidget> createState() => _CustomSnackBarWidgetState();
}

class _CustomSnackBarWidgetState extends State<CustomSnackBarWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      width: double.infinity,
      child: Row(
        children: <Widget>[
          _getNotificationIcon(),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  maxFontSize: 50,
                  minFontSize: 10,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 5,
                ),
                AutoSizeText(
                  widget.message,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  maxFontSize: 50,
                  minFontSize: 10,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          InkWell(
            onTap: () {
              widget.onTapClose?.call();
            },
            child: Container(
              height: 40,
              width: 40,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
                child: SvgPicture.asset(SvgPaths.closeErrNotificationIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getNotificationIcon() {
    switch (widget.notificationType) {
      case NotificationType.error:
        return SvgPicture.asset(SvgPaths.notificationErrorIcon);
      case NotificationType.success:
        return SvgPicture.asset(SvgPaths.notificationSuccessIcon);
      case NotificationType.info:
        return SvgPicture.asset(SvgPaths.notificationSuccessIcon);
    }
  }
}

const List<BoxShadow> kDefaultBoxShadow = <BoxShadow>[
  BoxShadow(
    color: Colors.black26,
    offset: Offset(0.0, 8.0),
    spreadRadius: 1,
    blurRadius: 30,
  ),
];

const BorderRadius kDefaultBorderRadius = BorderRadius.all(Radius.circular(16));
