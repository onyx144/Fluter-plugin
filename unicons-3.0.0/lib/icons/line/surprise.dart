// Code generated using SVG Painter package
// Generated in 2024-08-26T20:40:00.804796

import 'dart:math' as math;

import 'package:flutter/material.dart';

class SurpriseIcon extends StatelessWidget {
  final Color? color;

  const SurpriseIcon({
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
          painter: SurprisePainter(color: color ?? colorScheme.primary),
        );
      },
    );
  }
}

class SurprisePainter extends CustomPainter {
  final Color color;

  const SurprisePainter({
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
      10.0 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.cubicTo(
      10.0 * scale + translationX,
      8.447715250169207 * scale + translationY,
      9.552284749830793 * scale + translationX,
      8.0 * scale + translationY,
      9.0 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.cubicTo(
      8.447715250169207 * scale + translationX,
      8.0 * scale + translationY,
      8.0 * scale + translationX,
      8.447715250169207 * scale + translationY,
      8.0 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.cubicTo(
      8.0 * scale + translationX,
      9.552284749830793 * scale + translationY,
      8.447715250169207 * scale + translationX,
      10.0 * scale + translationY,
      9.0 * scale + translationX,
      10.0 * scale + translationY,
    );

    path.cubicTo(
      9.552284749830793 * scale + translationX,
      10.0 * scale + translationY,
      10.0 * scale + translationX,
      9.552284749830793 * scale + translationY,
      10.0 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.close();

    path.moveTo(
      15.0 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.cubicTo(
      14.447715250169207 * scale + translationX,
      8.0 * scale + translationY,
      14.0 * scale + translationX,
      8.447715250169207 * scale + translationY,
      14.0 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.cubicTo(
      14.0 * scale + translationX,
      9.552284749830793 * scale + translationY,
      14.447715250169207 * scale + translationX,
      10.0 * scale + translationY,
      15.0 * scale + translationX,
      10.0 * scale + translationY,
    );

    path.cubicTo(
      15.552284749830793 * scale + translationX,
      10.0 * scale + translationY,
      16.0 * scale + translationX,
      9.552284749830793 * scale + translationY,
      16.0 * scale + translationX,
      9.0 * scale + translationY,
    );

    path.cubicTo(
      16.0 * scale + translationX,
      8.447715250169207 * scale + translationY,
      15.552284749830793 * scale + translationX,
      8.0 * scale + translationY,
      15.0 * scale + translationX,
      8.0 * scale + translationY,
    );

    path.close();

    path.moveTo(
      12.0 * scale + translationX,
      11.0 * scale + translationY,
    );

    path.cubicTo(
      10.139184207051834 * scale + translationX,
      11.075880976249513 * scale + translationY,
      8.688023454176681 * scale + translationX,
      12.63866947934583 * scale + translationY,
      8.75000068017978 * scale + translationX,
      14.500001127155063 * scale + translationY,
    );

    path.cubicTo(
      8.688023454176681 * scale + translationX,
      16.361332774964296 * scale + translationY,
      10.139184207051835 * scale + translationX,
      17.924121278060614 * scale + translationY,
      12.000000932817985 * scale + translationX,
      18.000001399226974 * scale + translationY,
    );

    path.cubicTo(
      13.86081765858413 * scale + translationX,
      17.924121278060614 * scale + translationY,
      15.311978411459284 * scale + translationX,
      16.361332774964296 * scale + translationY,
      15.250001185456187 * scale + translationX,
      14.500001127155063 * scale + translationY,
    );

    path.cubicTo(
      15.311978411459284 * scale + translationX,
      12.63866947934583 * scale + translationY,
      13.86081765858413 * scale + translationX,
      11.075880976249511 * scale + translationY,
      12.000000932817983 * scale + translationX,
      11.000000855083151 * scale + translationY,
    );

    path.close();

    path.moveTo(
      12.0 * scale + translationX,
      16.0 * scale + translationY,
    );

    path.cubicTo(
      11.24317769929044 * scale + translationX,
      15.926090352770153 * scale + translationY,
      10.686222480640689 * scale + translationX,
      15.257744090390451 * scale + translationY,
      10.750000273816873 * scale + translationX,
      14.500000369334387 * scale + translationY,
    );

    path.cubicTo(
      10.686222480640689 * scale + translationX,
      13.742256648278323 * scale + translationY,
      11.24317769929044 * scale + translationX,
      13.073910385898621 * scale + translationY,
      12.000000305656044 * scale + translationX,
      13.000000331127382 * scale + translationY,
    );

    path.cubicTo(
      12.756822912021649 * scale + translationX,
      13.073910385898621 * scale + translationY,
      13.3137781306714 * scale + translationX,
      13.742256648278323 * scale + translationY,
      13.250000337495216 * scale + translationX,
      14.500000369334387 * scale + translationY,
    );

    path.cubicTo(
      13.3137781306714 * scale + translationX,
      15.257744090390451 * scale + translationY,
      12.756822912021649 * scale + translationX,
      15.926090352770153 * scale + translationY,
      12.000000305656044 * scale + translationX,
      16.000000407541393 * scale + translationY,
    );

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}