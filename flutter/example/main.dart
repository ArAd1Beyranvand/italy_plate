import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:italy_plate/italy_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: ItalyPlates.private, theme: ItalyThemes.private),
);
