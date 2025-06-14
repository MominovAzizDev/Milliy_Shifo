import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

import '../../../../../core/utils/mediaquery_meneger.dart';

class Popularspecialisations extends StatelessWidget {
  final IconData icones;
  final String jobs;
  final String numdoctors;

  const Popularspecialisations({
    super.key,
    required this.icones,
    required this.jobs,
    required this.numdoctors,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icones, color: AppColors.enterButtonBack),
        title: Text(
          jobs,
          style: TextStyle(fontSize: MediaqueryMeneger.fontSize(20)),
        ),
        trailing: Text(
          numdoctors,
          style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
        ),
      ),
    );
  }
}
