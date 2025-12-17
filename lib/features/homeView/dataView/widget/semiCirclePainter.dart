import 'dart:math';
import 'package:flutter/material.dart';

class SemiCirclePainter extends CustomPainter {
  final double value;
  final double maxValue;
  final Color progressColor;
  final Color backgroundColor;
  final double strokeWidth;

  SemiCirclePainter({
    required this.value,
    required this.maxValue,
    required this.progressColor,
    required this.backgroundColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - strokeWidth / 2;

    // 🔥 Image matched angles
    const double startAngle = -210 * pi / 180;
    const double totalSweep = 240 * pi / 180;

    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Background arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      totalSweep,
      false,
      backgroundPaint,
    );

    // Progress arc
    final sweepAngle =
        (value / maxValue).clamp(0.0, 1.0) * totalSweep;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
