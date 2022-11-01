import 'package:flutter/material.dart';

goto(ctx, Widget? location) {
  Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) {
        return location!;
      },
    ),
  );
}

// ignore: non_constant_identifier_names
return_to(ctx, Widget Location) {
  Navigator.pop(ctx);
}
