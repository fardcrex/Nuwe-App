import 'package:flutter/material.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_box.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/input_form.dart';
import 'package:nuwe/Pages/Initial_forms/widgets/primary_buttom.dart';

import 'container/buttom_next.dart';
import 'container/buttom_previus.dart';
import 'widgets/title_form.dart';

class FourthStep extends StatefulWidget {
  final void Function(String) onAddStack;
  final void Function(String) removeStack;
  final List<String> stacks;
  const FourthStep({Key? key, required this.onAddStack, required this.stacks, required this.removeStack})
      : super(key: key);

  @override
  _FourthStepState createState() => _FourthStepState();
}

class _FourthStepState extends State<FourthStep> {
  TextEditingController textController = TextEditingController();

  void _addStack() {
    widget.onAddStack(textController.text);
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return InputBox(
      children: [
        const SizedBox(height: 10.0),
        const TitleInput('PERFIL PROFESIONAL'),
        const SizedBox(height: 20.0),
        const SubTitleInput(
            'Más adelante podrás complementarlo con tus datos de Linkedin o experiéncia profesional.'),
        const SizedBox(height: 20.0),
        InputForm(
          initialText: '',
          textController: textController,
          canShowError: false,
          hintText: 'Escribe aquí el stack con el que trabajas',
          textInputAction: TextInputAction.done,
          onChanged: (_) => setState(() {}),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PrimaryButtonInput(
              maintext: 'Agregar',
              isSubmitting: textController.text.isEmpty,
              onPress: () {
                if (textController.text.isNotEmpty) _addStack();
              },
            )
          ],
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 240.0,
          child: SingleChildScrollView(
            child: Wrap(
              runSpacing: 12,
              spacing: 12,
              children:
                  widget.stacks.map((stack) => StackView(stack: stack, delete: widget.removeStack)).toList(),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ButtomPrevius(),
            ButtomNext(),
          ],
        ),
      ],
    );
  }
}

class StackView extends StatelessWidget {
  final String stack;
  final Function(String id)? delete;
  const StackView({Key? key, required this.stack, this.delete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4, right: 4),
      decoration: BoxDecoration(
        //   color: Theme.of(context).primaryColor,
        border: Border.all(color: Colors.white),
        borderRadius: const BorderRadius.all(Radius.circular(60)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        //   alignment: WrapAlignment.spaceBetween,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(stack),
          const SizedBox(width: 10.0),
          InkWell(
            onTap: () => delete?.call(stack),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.close,
                color: Theme.of(context).backgroundColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
