// Code generated using SVG Painter package
// Generated in 2024-08-26T20:39:58.204469

import 'dart:math' as math;

import 'package:flutter/material.dart';

class FolderDownloadIcon extends StatelessWidget {
  final Color? color;

  const FolderDownloadIcon({
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
          painter: FolderDownloadPainter(color: color ?? colorScheme.primary),
        );
      },
    );
  }
}

class FolderDownloadPainter extends CustomPainter {
  final Color color;

  const FolderDownloadPainter({
    super.repaint,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 20.0000007050292;
    final scaleY = size.height / 19.004918091414524;
    final scale = math.min(scaleX, scaleY);

    final translationX = (size.width - 20.0000007050292 * scale) / 2 - 2.0 * scale;
    final translationY = (size.height - 19.004918091414524 * scale) / 2 - 2.495082598713517 * scale;

    final path = Path();
    final paint = Paint()..color = color;

    path.moveTo(
      13.29 * scale + translationX,
      13.79 * scale + translationY,
    );

    path.lineTo(
      13.0 * scale + translationX,
      14.09 * scale + translationY,
    );

    path.lineTo(
      13.0 * scale + translationX,
      11.5 * scale + translationY,
    );

    path.cubicTo(
      13.0 * scale + translationX,
      10.947715250169207 * scale + translationY,
      12.552284749830793 * scale + translationX,
      10.5 * scale + translationY,
      12.0 * scale + translationX,
      10.5 * scale + translationY,
    );

    path.cubicTo(
      11.447715250169207 * scale + translationX,
      10.5 * scale + translationY,
      11.0 * scale + translationX,
      10.947715250169207 * scale + translationY,
      11.0 * scale + translationX,
      11.5 * scale + translationY,
    );

    path.lineTo(
      11.0 * scale + translationX,
      14.09 * scale + translationY,
    );

    path.lineTo(
      10.71 * scale + translationX,
      13.79 * scale + translationY,
    );

    path.cubicTo(
      10.317877987111185 * scale + translationX,
      13.397878072642618 * scale + translationY,
      9.682122337467863 * scale + translationX,
      13.397878072642618 * scale + translationY,
      9.290000168540097 * scale + translationX,
      13.790000241570382 * scale + translationY,
    );

    path.cubicTo(
      8.897877999612332 * scale + translationX,
      14.182122410498149 * scale + translationY,
      8.897877999612332 * scale + translationX,
      14.81787806014147 * scale + translationY,
      9.290000168540097 * scale + translationX,
      15.210000229069237 * scale + translationY,
    );

    path.lineTo(
      11.290000000000001 * scale + translationX,
      17.21 * scale + translationY,
    );

    path.cubicTo(
      11.385103709694299 * scale + translationX,
      17.301040629317033 * scale + translationY,
      11.497248682277576 * scale + translationX,
      17.37240561187003 * scale + translationY,
      11.620000000000001 * scale + translationX,
      17.42 * scale + translationY,
    );

    path.cubicTo(
      11.862039765189005 * scale + translationX,
      17.52697661546829 * scale + translationY,
      12.137960002276792 * scale + translationX,
      17.52697661546829 * scale + translationY,
      12.379999880051107 * scale + translationX,
      17.419999831218924 * scale + translationY,
    );

    path.cubicTo(
      12.502751317722426 * scale + translationX,
      17.37240561187003 * scale + translationY,
      12.614896290305705 * scale + translationX,
      17.301040629317033 * scale + translationY,
      12.710000000000003 * scale + translationX,
      17.21 * scale + translationY,
    );

    path.lineTo(
      14.71 * scale + translationX,
      15.21 * scale + translationY,
    );

    path.cubicTo(
      15.102122389882526 * scale + translationX,
      14.81787806014147 * scale + translationY,
      15.102122389882526 * scale + translationX,
      14.182122410498149 * scale + translationY,
      14.710000220954761 * scale + translationX,
      13.790000241570382 * scale + translationY,
    );

    path.cubicTo(
      14.317878052026995 * scale + translationX,
      13.397878072642618 * scale + translationY,
      13.682122402383673 * scale + translationX,
      13.397878072642618 * scale + translationY,
      13.290000233455906 * scale + translationX,
      13.790000241570382 * scale + translationY,
    );

    path.close();

    path.moveTo(
      19.0 * scale + translationX,
      5.5 * scale + translationY,
    );

    path.lineTo(
      12.72 * scale + translationX,
      5.5 * scale + translationY,
    );

    path.lineTo(
      12.4 * scale + translationX,
      4.5 * scale + translationY,
    );

    path.cubicTo(
      11.974808721927825 * scale + translationX,
      3.297346303705666 * scale + translationY,
      10.835594260838974 * scale + translationX,
      2.495082598713517 * scale + translationY,
      9.560000284910203 * scale + translationX,
      2.500000074505806 * scale + translationY,
    );

    path.lineTo(
      5.0 * scale + translationX,
      2.5 * scale + translationY,
    );

    path.cubicTo(
      3.343145829688046 * scale + translationX,
      2.500000025127698 * scale + translationY,
      2.0000000102265374 * scale + translationX,
      3.8431458445892064 * scale + translationY,
      2.0000000596046448 * scale + translationX,
      5.500000163912772 * scale + translationY,
    );

    path.lineTo(
      2.0 * scale + translationX,
      18.5 * scale + translationY,
    );

    path.cubicTo(
      2.000000010226538 * scale + translationX,
      20.15685487066653 * scale + translationY,
      3.3431458296880447 * scale + translationX,
      21.50000069012804 * scale + translationY,
      5.00000014901161 * scale + translationX,
      21.50000064074993 * scale + translationY,
    );

    path.lineTo(
      19.0 * scale + translationX,
      21.5 * scale + translationY,
    );

    path.cubicTo(
      20.65685488556769 * scale + translationX,
      21.500000690128036 * scale + translationY,
      22.0000007050292 * scale + translationX,
      20.15685487066653 * scale + translationY,
      22.000000655651093 * scale + translationX,
      18.500000551342964 * scale + translationY,
    );

    path.lineTo(
      22.0 * scale + translationX,
      8.5 * scale + translationY,
    );

    path.cubicTo(
      22.0000007050292 * scale + translationX,
      6.843145933996174 * scale + translationY,
      20.65685488556769 * scale + translationX,
      5.500000114534667 * scale + translationY,
      19.000000566244125 * scale + translationX,
      5.500000163912773 * scale + translationY,
    );

    path.close();

    path.moveTo(
      20.0 * scale + translationX,
      18.5 * scale + translationY,
    );

    path.cubicTo(
      20.0 * scale + translationX,
      19.052284749830793 * scale + translationY,
      19.552284749830793 * scale + translationX,
      19.5 * scale + translationY,
      19.0 * scale + translationX,
      19.5 * scale + translationY,
    );

    path.lineTo(
      5.0 * scale + translationX,
      19.5 * scale + translationY,
    );

    path.cubicTo(
      4.447715250169207 * scale + translationX,
      19.5 * scale + translationY,
      4.0 * scale + translationX,
      19.052284749830793 * scale + translationY,
      4.0 * scale + translationX,
      18.5 * scale + translationY,
    );

    path.lineTo(
      4.0 * scale + translationX,
      5.5 * scale + translationY,
    );

    path.cubicTo(
      4.0 * scale + translationX,
      4.947715250169207 * scale + translationY,
      4.447715250169207 * scale + translationX,
      4.5 * scale + translationY,
      5.0 * scale + translationX,
      4.5 * scale + translationY,
    );

    path.lineTo(
      9.56 * scale + translationX,
      4.5 * scale + translationY,
    );

    path.cubicTo(
      9.98991591180029 * scale + translationX,
      4.498890240549085 * scale + translationY,
      10.372427882209154 * scale + translationX,
      4.772688282525956 * scale + translationY,
      10.51 * scale + translationX,
      5.18 * scale + translationY,
    );

    path.lineTo(
      11.05 * scale + translationX,
      6.82 * scale + translationY,
    );

    path.cubicTo(
      11.187572117790847 * scale + translationX,
      7.227311717474044 * scale + translationY,
      11.57008408819971 * scale + translationX,
      7.501109759450915 * scale + translationY,
      12.0 * scale + translationX,
      7.5 * scale + translationY,
    );

    path.lineTo(
      19.0 * scale + translationX,
      7.5 * scale + translationY,
    );

    path.cubicTo(
      19.552284749830793 * scale + translationX,
      7.5 * scale + translationY,
      20.0 * scale + translationX,
      7.947715250169207 * scale + translationY,
      20.0 * scale + translationX,
      8.5 * scale + translationY,
    );

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}