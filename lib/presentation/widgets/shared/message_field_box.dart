import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();

    final colors = Theme.of(context).colorScheme;

    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
          borderSide: BorderSide( color: colors.secondary ),
          borderRadius: BorderRadius.circular(40)
        );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: "Es una pregunta?",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final textValue = textController.value.text;
            print('Button: $textValue');
            textController.clear();
            focusNode.requestFocus();
          },
          
          )
      ),
      onFieldSubmitted: (value) {
        print('submit value: $value');
        textController.clear();
        
      },
      onChanged: (value) {
        print('changed: $value');
      },
    );
  }
}