import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:nuwe/Redux/Init-Form/state/init_form_state.dart';

class DotStepperView extends StatelessWidget {
  final int activeStep;
  const DotStepperView({Key? key, this.activeStep = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotStepper(
      dotCount: StepForm.values.length,
      dotRadius: 6,
      activeStep: activeStep,
      spacing: 30,
      indicator: Indicator.slide,
      tappingEnabled: false,
      fixedDotDecoration: FixedDotDecoration(
        color: Theme.of(context).backgroundColor,
        strokeColor: Theme.of(context).primaryColor,
        strokeWidth: 2,
      ),
      indicatorDecoration: IndicatorDecoration(
        color: Theme.of(context).primaryColor,
        strokeColor: Theme.of(context).primaryColor,
        strokeWidth: 2,
      ),
    );
  }
}
