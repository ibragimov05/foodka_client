import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodka_client/core/utils/extensions.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/assets.dart';

class AppTextFormField extends StatefulWidget {
  final bool isObscure;
  final String? hintText, errorText, labelText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.errorText,
    this.inputFormatters,
    this.isObscure = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return widget.labelText != null && widget.labelText!.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.labelText ?? '',
                style: const TextStyle(color: AppColors.greyscale600),
              ),
              8.sH,
              _textFormField(),
            ],
          )
        : _textFormField();
  }

  Widget _textFormField() => TextFormField(
        controller: widget.controller,
        obscureText: _isObscure,
        onChanged: widget.onChanged,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          errorText: widget.errorText,
          suffixIcon: _passwordToggleObscure(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.greyscale300,
              width: 1.3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.brand500,
              width: 1.3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0F0),
              width: 1.3,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD8E0F0),
              width: 1.3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.error500,
              width: 1.3,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.error500,
              width: 1.3,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: AppColors.greyscale400,
            fontWeight: FontWeight.w400,
          ),
        ),
      );

  Widget? _passwordToggleObscure() => widget.isObscure
      ? GestureDetector(
          onTap: () => setState(() => _isObscure = !_isObscure),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: _isObscure
                ? AppAssets.icons.eyeSlash.svg()
                : AppAssets.icons.eye.svg(),
          ),
        )
      : null;
}
