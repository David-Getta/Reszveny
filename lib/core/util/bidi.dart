import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' show Bidi;

/// Az adatforrásból jövő szöveg (cégnév, cégleírás, hírcím) iránya a tartalmából:
/// az angol cégleírás jobbról balra író nyelvű felületen is balról jobbra fut, így a
/// mondatvégi pont nem ugrik a sor elejére („.Apple Inc”).
TextDirection contentDirection(String text) =>
    Bidi.detectRtlDirectionality(text) ? TextDirection.rtl : TextDirection.ltr;
