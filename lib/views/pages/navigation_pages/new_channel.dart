import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slyde_messenger/resources/custom_colors.dart';
import 'package:slyde_messenger/viewmodels/app_viewModel.dart';

class NewChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final appViewModel = Provider.of<AppViewModel>(context);
    // final colors = CustomColors(darkMode: appViewModel.darkMode);
    return Scaffold(
      // backgroundColor: colors.primaryColor,
      appBar: AppBar(
          //backgroundColor: colors.secondaryColor,
          ),
    );
  }
}
