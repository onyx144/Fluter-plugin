// Code generated using SVG Painter package
// Generated in 2024-08-26T20:39:57.781678

import 'dart:math' as math;

import 'package:flutter/material.dart';

class ExpandArrowsAltIcon extends StatelessWidget {
  final Color? color;

  const ExpandArrowsAltIcon({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final colorScheme = Theme.of(context).colorScheme;
        final size = Size(constraints.maxWidth, constraints.maxHeight);

        return CustomPaint(
          size: size,
          painter: ExpandArrowsAltPainter(color: color ?? colorScheme.primary),
        );
      },
    );
  }
}

class ExpandArrowsAltPainter extends CustomPainter {
  final Color color;

  const ExpandArrowsAltPainter({
    super.repaint,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 20.000000000000004;
    final scaleY = size.height / 20.000000000000004;
    final scale = math.min(scaleX, scaleY);

    final translationX = (size.width - 20.000000000000004 * scale) / 2 - 2.0 * scale;
    final translationY = (size.height - 20.000000000000004 * scale) / 2 - 2.0 * scale;

    final path = Path();
    final paint = Paint()..color = color;

    path.moveTo(
      9.29 * scale + translationX,
      13.29 * scale + translationY,
    );

    path.lineTo(
      4.0 * scale + translationX,
      18.59 * scale + translationY,
    );

    path.lineTo(
      4.0 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.cubicTo(
      4.0 * scale + translationX,
      16.447715250169207 * scale + translationY,
      3.5522847498307932 * scale + translationX,
      16.0 * scale + translationY,
      3.0 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.cubicTo(
      2.4477152501692068 * scale + translationX,
      16.0 * scale + translationY,
      2.0 * scale + translationX,
      16.447715250169207 * scale + translationY,
      2.0 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.lineTo(
      2.0 * scale + translationX,
      21.0 * scale + translationY,
    );

    path.cubicTo(
      2.0015799874138587 * scale + translationX,
      21.130677257271156 * scale + translationY,
      2.02875902533837 * scale + translationX,
      21.259777687412583 * scale + translationY,
      2.080000000000001 * scale + translationX,
      21.38 * scale + translationY,
    );

    path.cubicTo(
      2.1814749218568523 * scale + translationX,
      21.62434931888823 * scale + translationY,
      2.375650681111769 * scale + translationX,
      21.818525078143146 * scale + translationY,
      2.62 * scale + translationX,
      21.919999999999998 * scale + translationY,
    );

    path.cubicTo(
      2.740222312587415 * scale + translationX,
      21.971240974661633 * scale + translationY,
      2.869322742728842 * scale + translationX,
      21.998420012586145 * scale + translationY,
      3.0 * scale + translationX,
      22.000000000000004 * scale + translationY,
    );

    path.lineTo(
      7.0 * scale + translationX,
      22.0 * scale + translationY,
    );

    path.cubicTo(
      7.552284749830793 * scale + translationX,
      22.0 * scale + translationY,
      8.0 * scale + translationX,
      21.552284749830793 * scale + translationY,
      8.0 * scale + translationX,
      21.0 * scale + translationY,
    );

    path.cubicTo(
      8.0 * scale + translationX,
      20.447715250169207 * scale + translationY,
      7.552284749830793 * scale + translationX,
      20.0 * scale + translationY,
      7.0 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.lineTo(
      5.41 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.lineTo(
      10.71 * scale + translationX,
      14.71 * scale + translationY,
    );

    path.cubicTo(
      11.102122324966716 * scale + translationX,
      14.317878052026995 * scale + translationY,
      11.102122324966716 * scale + translationX,
      13.682122402383673 * scale + translationY,
      10.710000156038952 * scale + translationX,
      13.290000233455906 * scale + translationY,
    );

    path.cubicTo(
      10.317877987111185 * scale + translationX,
      12.897878064528141 * scale + translationY,
      9.682122337467863 * scale + translationX,
      12.897878064528141 * scale + translationY,
      9.290000168540097 * scale + translationX,
      13.290000233455906 * scale + translationY,
    );

    path.close();

    path.moveTo(
      5.41 * scale + translationX,
      4.0 * scale + translationY,
    );

    path.lineTo(
      7.0 * scale + translationX,
      4.0 * scale + translationY,
    );

    path.cubicTo(
      7.552284749830793 * scale + translationX,
      4.0 * scale + translationY,
      8.0 * scale + translationX,
      3.5522847498307932 * scale + translationY,
      8.0 * scale + translationX,
      3.0 * scale + translationY,
    );

    path.cubicTo(
      8.0 * scale + translationX,
      2.4477152501692068 * scale + translationY,
      7.552284749830793 * scale + translationX,
      2.0 * scale + translationY,
      7.0 * scale + translationX,
      2.0 * scale + translationY,
    );

    path.lineTo(
      3.0 * scale + translationX,
      2.0 * scale + translationY,
    );

    path.cubicTo(
      2.8693227427288424 * scale + translationX,
      2.0015799874138582 * scale + translationY,
      2.740222312587416 * scale + translationX,
      2.028759025338369 * scale + translationY,
      2.62 * scale + translationX,
      2.08 * scale + translationY,
    );

    path.cubicTo(
      2.3756506811117686 * scale + translationX,
      2.1814749218568514 * scale + translationY,
      2.1814749218568514 * scale + translationX,
      2.3756506811117686 * scale + translationY,
      2.0799999999999996 * scale + translationX,
      2.62 * scale + translationY,
    );

    path.cubicTo(
      2.028759025338369 * scale + translationX,
      2.7402223125874157 * scale + translationY,
      2.0015799874138582 * scale + translationX,
      2.8693227427288424 * scale + translationY,
      2.0 * scale + translationX,
      3.0 * scale + translationY,
    );

    path.lineTo(
      2.0 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.cubicTo(
      2.0 * scale + translationX,
      7.552284749830793 * scale + translationY,
      2.4477152501692068 * scale + translationX,
      8.0 * scale + translationY,
      3.0 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.cubicTo(
      3.5522847498307932 * scale + translationX,
      8.0 * scale + translationY,
      4.0 * scale + translationX,
      7.552284749830793 * scale + translationY,
      4.0 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.lineTo(
      4.0 * scale + translationX,
      5.41 * scale + translationY,
    );

    path.lineTo(
      9.29 * scale + translationX,
      10.71 * scale + translationY,
    );

    path.cubicTo(
      9.477766599905555 * scale + translationX,
      10.899312650823097 * scale + translationY,
      9.733362463629442 * scale + translationX,
      11.00579832434167 * scale + translationY,
      10.0 * scale + translationX,
      11.00579832434167 * scale + translationY,
    );

    path.cubicTo(
      10.266637536370558 * scale + translationX,
      11.00579832434167 * scale + translationY,
      10.522233400094443 * scale + translationX,
      10.899312650823097 * scale + translationY,
      10.709999999999999 * scale + translationX,
      10.71 * scale + translationY,
    );

    path.cubicTo(
      10.899312650823095 * scale + translationX,
      10.522233400094445 * scale + translationY,
      11.005798324341669 * scale + translationX,
      10.266637536370558 * scale + translationY,
      11.005798324341669 * scale + translationX,
      10.0 * scale + translationY,
    );

    path.cubicTo(
      11.005798324341669 * scale + translationX,
      9.733362463629442 * scale + translationY,
      10.899312650823095 * scale + translationX,
      9.477766599905557 * scale + translationY,
      10.709999999999999 * scale + translationX,
      9.290000000000001 * scale + translationY,
    );

    path.close();

    path.moveTo(
      21.0 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.cubicTo(
      20.447715250169207 * scale + translationX,
      16.0 * scale + translationY,
      20.0 * scale + translationX,
      16.447715250169207 * scale + translationY,
      20.0 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.lineTo(
      20.0 * scale + translationX,
      18.59 * scale + translationY,
    );

    path.lineTo(
      14.71 * scale + translationX,
      13.29 * scale + translationY,
    );

    path.cubicTo(
      14.317878052026995 * scale + translationX,
      12.897878064528141 * scale + translationY,
      13.682122402383673 * scale + translationX,
      12.897878064528141 * scale + translationY,
      13.290000233455906 * scale + translationX,
      13.290000233455906 * scale + translationY,
    );

    path.cubicTo(
      12.897878064528141 * scale + translationX,
      13.682122402383673 * scale + translationY,
      12.897878064528141 * scale + translationX,
      14.317878052026995 * scale + translationY,
      13.290000233455906 * scale + translationX,
      14.710000220954761 * scale + translationY,
    );

    path.lineTo(
      18.59 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.lineTo(
      17.0 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.cubicTo(
      16.447715250169207 * scale + translationX,
      20.0 * scale + translationY,
      16.0 * scale + translationX,
      20.447715250169207 * scale + translationY,
      16.0 * scale + translationX,
      21.0 * scale + translationY,
    );

    path.cubicTo(
      16.0 * scale + translationX,
      21.552284749830793 * scale + translationY,
      16.447715250169207 * scale + translationX,
      22.0 * scale + translationY,
      17.0 * scale + translationX,
      22.0 * scale + translationY,
    );

    path.lineTo(
      21.0 * scale + translationX,
      22.0 * scale + translationY,
    );

    path.cubicTo(
      21.130677257271156 * scale + translationX,
      21.99842001258614 * scale + translationY,
      21.259777687412583 * scale + translationX,
      21.97124097466163 * scale + translationY,
      21.38 * scale + translationX,
      21.919999999999998 * scale + translationY,
    );

    path.cubicTo(
      21.62434931888823 * scale + translationX,
      21.81852507814315 * scale + translationY,
      21.818525078143146 * scale + translationX,
      21.624349318888232 * scale + translationY,
      21.919999999999998 * scale + translationX,
      21.380000000000003 * scale + translationY,
    );

    path.cubicTo(
      21.971240974661633 * scale + translationX,
      21.259777687412587 * scale + translationY,
      21.998420012586145 * scale + translationX,
      21.13067725727116 * scale + translationY,
      22.000000000000004 * scale + translationX,
      21.0 * scale + translationY,
    );

    path.lineTo(
      22.0 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.cubicTo(
      22.0 * scale + translationX,
      16.447715250169207 * scale + translationY,
      21.552284749830793 * scale + translationX,
      16.0 * scale + translationY,
      21.0 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.close();

    path.moveTo(
      21.92 * scale + translationX,
      2.619999999999999 * scale + translationY,
    );

    path.cubicTo(
      21.81852507814315 * scale + translationX,
      2.375650681111768 * scale + translationY,
      21.624349318888232 * scale + translationX,
      2.181474921856852 * scale + translationY,
      21.380000000000003 * scale + translationX,
      2.0799999999999996 * scale + translationY,
    );

    path.cubicTo(
      21.259777687412587 * scale + translationX,
      2.0287590253383687 * scale + translationY,
      21.13067725727116 * scale + translationX,
      2.001579987413858 * scale + translationY,
      21.0 * scale + translationX,
      2.0 * scale + translationY,
    );

    path.lineTo(
      17.0 * scale + translationX,
      2.0 * scale + translationY,
    );

    path.cubicTo(
      16.447715250169207 * scale + translationX,
      2.0 * scale + translationY,
      16.0 * scale + translationX,
      2.4477152501692068 * scale + translationY,
      16.0 * scale + translationX,
      3.0 * scale + translationY,
    );

    path.cubicTo(
      16.0 * scale + translationX,
      3.5522847498307932 * scale + translationY,
      16.447715250169207 * scale + translationX,
      4.0 * scale + translationY,
      17.0 * scale + translationX,
      4.0 * scale + translationY,
    );

    path.lineTo(
      18.59 * scale + translationX,
      4.0 * scale + translationY,
    );

    path.lineTo(
      13.29 * scale + translationX,
      9.29 * scale + translationY,
    );

    path.cubicTo(
      13.100687349176903 * scale + translationX,
      9.477766599905555 * scale + translationY,
      12.99420167565833 * scale + translationX,
      9.73336246362944 * scale + translationY,
      12.99420167565833 * scale + translationX,
      9.999999999999998 * scale + translationY,
    );

    path.cubicTo(
      12.99420167565833 * scale + translationX,
      10.266637536370558 * scale + translationY,
      13.100687349176903 * scale + translationX,
      10.522233400094443 * scale + translationY,
      13.29 * scale + translationX,
      10.709999999999999 * scale + translationY,
    );

    path.cubicTo(
      13.477766599905555 * scale + translationX,
      10.899312650823095 * scale + translationY,
      13.733362463629442 * scale + translationX,
      11.005798324341669 * scale + translationY,
      14.0 * scale + translationX,
      11.005798324341669 * scale + translationY,
    );

    path.cubicTo(
      14.266637536370558 * scale + translationX,
      11.005798324341669 * scale + translationY,
      14.522233400094443 * scale + translationX,
      10.899312650823095 * scale + translationY,
      14.709999999999999 * scale + translationX,
      10.709999999999999 * scale + translationY,
    );

    path.lineTo(
      20.0 * scale + translationX,
      5.41 * scale + translationY,
    );

    path.lineTo(
      20.0 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.cubicTo(
      20.0 * scale + translationX,
      7.552284749830793 * scale + translationY,
      20.447715250169207 * scale + translationX,
      8.0 * scale + translationY,
      21.0 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.cubicTo(
      21.552284749830793 * scale + translationX,
      8.0 * scale + translationY,
      22.0 * scale + translationX,
      7.552284749830793 * scale + translationY,
      22.0 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.lineTo(
      22.0 * scale + translationX,
      3.0 * scale + translationY,
    );

    path.cubicTo(
      21.99842001258614 * scale + translationX,
      2.869322742728843 * scale + translationY,
      21.971240974661633 * scale + translationX,
      2.7402223125874166 * scale + translationY,
      21.92 * scale + translationX,
      2.6200000000000006 * scale + translationY,
    );

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}