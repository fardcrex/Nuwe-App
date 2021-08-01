import 'dart:math';

import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:nuwe/Pages/Auth/widgets/logo.dart';
import 'package:nuwe/Pages/Auth/widgets/text_main.dart';
import 'package:nuwe/Pages/Initial_forms/second_step.dart';
import 'package:nuwe/Pages/Initial_forms/third_step.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/dot_steepper_view.dart';

import 'container/buttom_next.dart';
import 'container/buttom_previus.dart';
import 'container/container_step.dart';
import 'container/first_step_container.dart';
import 'final_step.dart';
import 'first_step.dart';
import 'fourth_step.dart';

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
              children: [
                const Spacer(flex: 2),
                const Logo(),
                const SizedBox(height: 10),
                const TextMain(),
                const Spacer(),
                IndexedStack(
                  index: activeStep,
                  children: const [
                    FirsStepContainer(),
                    SecondStep(),
                    ThirdStep(),
                    FourthStep(),
                    FinalStep(),
                  ],
                ),
                const Spacer(),
                Expanded(flex: 2, child: DotStepperView(activeStep: activeStep)),
              ],
            );
          }),
        ),
      ),
    );
  }
}
