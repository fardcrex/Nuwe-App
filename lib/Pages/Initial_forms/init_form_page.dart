import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/dot_steepper_view.dart';

import 'container/container_step.dart';
import 'container/first_step_container.dart';
import 'container/fourth_step_container.dart';
import 'container/second_step_container.dart';
import 'container/third_step_container.dart';
import 'final_step.dart';

class InitFormPage extends StatelessWidget {
  const InitFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: min(900, MediaQuery.of(context).size.longestSide),
          child: ContainerStep(builder: (context, activeStep) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                const SizedBox(height: 10),
                /*    const Logo(),
                const SizedBox(height: 10), */
                /*    const TextMain(),
                const Spacer(), */
                IndexedStack(
                  alignment: Alignment.center,
                  index: activeStep,
                  children: const [
                    FirsStepContainer(),
                    SecondStepContainer(),
                    ThirdStepContainer(),
                    FourthStepContainer(),
                    FinalStep(),
                  ],
                ),
                const Spacer(),
                DotStepperView(activeStep: activeStep),
                const Spacer(),
              ],
            );
          }),
        ),
      ),
    );
  }
}
