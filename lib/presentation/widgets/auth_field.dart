import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthField extends HookWidget {
  final TextEditingController? controller;
  final bool? obsecuretext;
  final String? hint;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final Function(String)? finished;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final double? width;
  final TextInputAction? inputAction;
  final String? type;
  final bool readOnly;
  final Color? borderColor;
  final double? borderWidth;
  final int? maxlines;
  final double? height;
  const AuthField(
      {this.hint,
      this.maxlines,
      this.height,
      this.borderColor,
      this.borderWidth,
      this.onChanged,
      this.inputAction,
      this.inputType,
      this.width,
      this.type,
      this.finished,
      this.validator,
      this.focusNode,
      super.key,
      this.readOnly = false,
      this.controller,
      this.obsecuretext = false});

  @override
  Widget build(BuildContext context) {
    final hidden = useState(obsecuretext);
    return Container(
      width: width,
      height: height ?? 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: borderColor ?? Colors.blue, width: borderWidth ?? 2),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        readOnly: readOnly,
        onFieldSubmitted: finished,
        textAlign: TextAlign.start,
        obscureText: hidden.value!,
        validator: validator,
        controller: controller,
        textInputAction: inputAction,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: obsecuretext!
              ? IconButton(
                  onPressed: () => hidden.value = !hidden.value!,
                  icon: Icon(
                    hidden.value! ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : const SizedBox.shrink(),
          focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          contentPadding:
              const EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 10),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black26,
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
        ),
        keyboardType: inputType,
      ),
    );
  }
}
