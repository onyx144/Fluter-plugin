// Code generated using SVG Painter package
// Generated in 2024-08-26T20:40:00.090703

import 'dart:math' as math;

import 'package:flutter/material.dart';

class RegisteredIcon extends StatelessWidget {
  final Color? color;

  const RegisteredIcon({
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
          painter: RegisteredPainter(color: color ?? colorScheme.primary),
        );
      },
    );
  }
}

class RegisteredPainter extends CustomPainter {
  final Color color;

  const RegisteredPainter({
    super.repaint,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 20.00000010972912;
    final scaleY = size.height / 20.000000109729125;
    final scale = math.min(scaleX, scaleY);

    final translationX = (size.width - 20.00000010972912 * scale) / 2 - 2.0000003003932685 * scale;
    final translationY = (size.height - 20.000000109729125 * scale) / 2 - 1.9999999475054815 * scale;

    final path = Path();
    final paint = Paint()..color = color;

    path.moveTo(
      12.0 * scale + translationX,
      2.0 * scale + translationY,
    );

    path.cubicTo(
      6.477152719301107 * scale + translationX,
      2.0000001120991637 * scale + translationY,
      2.0000003003932685 * scale + translationX,
      6.477152619960025 * scale + translationY,
      2.0000003278255463 * scale + translationX,
      12.000000079472855 * scale + translationY,
    );

    path.cubicTo(
      2.000000355257824 * scale + translationX,
      17.522847538985683 * scale + translationY,
      6.477152818642171 * scale + translationX,
      22.00000000237004 * scale + translationY,
      12.000000278155001 * scale + translationX,
      22.000000029802322 * scale + translationY,
    );

    path.cubicTo(
      17.522847737667835 * scale + translationX,
      22.000000057234608 * scale + translationY,
      22.000000245528707 * scale + translationX,
      17.52284763832677 * scale + translationY,
      22.000000327825546 * scale + translationX,
      12.000000178813936 * scale + translationY,
    );

    path.cubicTo(
      22.000000410122386 * scale + translationX,
      6.477152564120693 * scale + translationY,
      17.522847793507175 * scale + translationX,
      1.9999999475054815 * scale + translationY,
      12.000000178813934 * scale + translationX,
      2.0000000298023233 * scale + translationY,
    );

    path.close();

    path.moveTo(
      12.0 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.cubicTo(
      7.581722001353654 * scale + translationX,
      20.0 * scale + translationY,
      4.000000000000001 * scale + translationX,
      16.41827799864635 * scale + translationY,
      4.0 * scale + translationX,
      12.000000000000002 * scale + translationY,
    );

    path.cubicTo(
      4.0 * scale + translationX,
      7.581722001353654 * scale + translationY,
      7.5817220013536515 * scale + translationX,
      4.000000000000001 * scale + translationY,
      11.999999999999998 * scale + translationX,
      4.0 * scale + translationY,
    );

    path.cubicTo(
      16.418277998646346 * scale + translationX,
      4.0 * scale + translationY,
      20.0 * scale + translationX,
      7.5817220013536515 * scale + translationY,
      20.0 * scale + translationX,
      11.999999999999998 * scale + translationY,
    );

    path.cubicTo(
      20.0 * scale + translationX,
      16.418277998646346 * scale + translationY,
      16.418277998646346 * scale + translationX,
      20.0 * scale + translationY,
      12.0 * scale + translationX,
      20.0 * scale + translationY,
    );

    path.close();

    path.moveTo(
      12.5 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.lineTo(
      9.5 * scale + translationX,
      7.0 * scale + translationY,
    );

    path.cubicTo(
      8.947715250169207 * scale + translationX,
      7.0 * scale + translationY,
      8.5 * scale + translationX,
      7.447715250169207 * scale + translationY,
      8.5 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.lineTo(
      8.5 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.cubicTo(
      8.5 * scale + translationX,
      16.552284749830793 * scale + translationY,
      8.947715250169207 * scale + translationX,
      17.0 * scale + translationY,
      9.5 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.cubicTo(
      10.052284749830793 * scale + translationX,
      17.0 * scale + translationY,
      10.5 * scale + translationX,
      16.552284749830793 * scale + translationY,
      10.5 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.lineTo(
      10.5 * scale + translationX,
      14.0 * scale + translationY,
    );

    path.lineTo(
      12.5 * scale + translationX,
      14.0 * scale + translationY,
    );

    path.cubicTo(
      13.052284749830793 * scale + translationX,
      14.0 * scale + translationY,
      13.5 * scale + translationX,
      14.447715250169207 * scale + translationY,
      13.5 * scale + translationX,
      15.0 * scale + translationY,
    );

    path.lineTo(
      13.5 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.cubicTo(
      13.5 * scale + translationX,
      16.552284749830793 * scale + translationY,
      13.947715250169207 * scale + translationX,
      17.0 * scale + translationY,
      14.5 * scale + translationX,
      17.0 * scale + translationY,
    );

    path.cubicTo(
      15.052284749830793 * scale + translationX,
      17.0 * scale + translationY,
      15.5 * scale + translationX,
      16.552284749830793 * scale + translationY,
      15.5 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.lineTo(
      15.5 * scale + translationX,
      15.0 * scale + translationY,
    );

    path.cubicTo(
      15.49558985836171 * scale + translationX,
      14.259945792319044 * scale + translationY,
      15.217789588857427 * scale + translationX,
      13.547637408974733 * scale + translationY,
      14.720000438690187 * scale + translationX,
      13.000000387430191 * scale + translationY,
    );

    path.cubicTo(
      15.217789588857427 * scale + translationX,
      12.45236336588565 * scale + translationY,
      15.495589858361708 * scale + translationX,
      11.74005498254134 * scale + translationY,
      15.500000461935997 * scale + translationX,
      11.000000327825546 * scale + translationY,
    );

    path.lineTo(
      15.5 * scale + translationX,
      10.0 * scale + translationY,
    );

    path.cubicTo(
      15.500000511314104 * scale + translationX,
      8.343145978699658 * scale + translationY,
      14.156854691852596 * scale + translationX,
      7.00000015923815 * scale + translationY,
      12.50000037252903 * scale + translationX,
      7.000000208616257 * scale + translationY,
    );

    path.close();

    path.moveTo(
      13.5 * scale + translationX,
      11.0 * scale + translationY,
    );

    path.cubicTo(
      13.5 * scale + translationX,
      11.552284749830793 * scale + translationY,
      13.052284749830793 * scale + translationX,
      12.0 * scale + translationY,
      12.5 * scale + translationX,
      12.0 * scale + translationY,
    );

    path.lineTo(
      10.5 * scale + translationX,
      12.0 * scale + translationY,
    );

    path.lineTo(
      10.5 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.lineTo(
      12.5 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.cubicTo(
      13.052284749830793 * scale + translationX,
      9.0 * scale + translationY,
      13.5 * scale + translationX,
      9.447715250169207 * scale + translationY,
      13.5 * scale + translationX,
      10.0 * scale + translationY,
    );

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}