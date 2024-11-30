// Code generated using SVG Painter package
// Generated in 2024-08-26T20:39:58.198485

import 'dart:math' as math;

import 'package:flutter/material.dart';

class FolderCheckIcon extends StatelessWidget {
  final Color? color;

  const FolderCheckIcon({
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
          painter: FolderCheckPainter(color: color ?? colorScheme.primary),
        );
      },
    );
  }
}

class FolderCheckPainter extends CustomPainter {
  final Color color;

  const FolderCheckPainter({
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
      14.29 * scale + translationX,
      10.79 * scale + translationY,
    );

    path.lineTo(
      11.0 * scale + translationX,
      14.09 * scale + translationY,
    );

    path.lineTo(
      9.71 * scale + translationX,
      12.79 * scale + translationY,
    );

    path.cubicTo(
      9.317877970882233 * scale + translationX,
      12.397878056413665 * scale + translationY,
      8.68212232123891 * scale + translationX,
      12.397878056413665 * scale + translationY,
      8.290000152311144 * scale + translationX,
      12.79000022534143 * scale + translationY,
    );

    path.cubicTo(
      7.8978779833833785 * scale + translationX,
      13.182122394269197 * scale + translationY,
      7.8978779833833785 * scale + translationX,
      13.817878043912518 * scale + translationY,
      8.290000152311144 * scale + translationX,
      14.210000212840285 * scale + translationY,
    );

    path.lineTo(
      10.290000000000001 * scale + translationX,
      16.21 * scale + translationY,
    );

    path.cubicTo(
      10.477766599905557 * scale + translationX,
      16.3993126508231 * scale + translationY,
      10.733362463629442 * scale + translationX,
      16.50579832434167 * scale + translationY,
      11.0 * scale + translationX,
      16.50579832434167 * scale + translationY,
    );

    path.cubicTo(
      11.26663753637056 * scale + translationX,
      16.50579832434167 * scale + translationY,
      11.522233400094445 * scale + translationX,
      16.3993126508231 * scale + translationY,
      11.71 * scale + translationX,
      16.21 * scale + translationY,
    );

    path.lineTo(
      15.71 * scale + translationX,
      12.21 * scale + translationY,
    );

    path.cubicTo(
      16.10212240611148 * scale + translationX,
      11.817878011454614 * scale + translationY,
      16.10212240611148 * scale + translationX,
      11.182122361811292 * scale + translationY,
      15.710000237183714 * scale + translationX,
      10.790000192883525 * scale + translationY,
    );

    path.cubicTo(
      15.317878068255947 * scale + translationX,
      10.39787802395576 * scale + translationY,
      14.682122418612625 * scale + translationX,
      10.39787802395576 * scale + translationY,
      14.290000249684859 * scale + translationX,
      10.790000192883525 * scale + translationY,
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