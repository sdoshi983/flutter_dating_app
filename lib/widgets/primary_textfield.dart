import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dating_app/utils/utils.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField({
    Key? key,
    this.margin,
    this.hintText,
    this.fillColor,
    this.borderColor,
    this.suffix,
    this.prefix,
    this.enabled,
    this.textInputType,
    this.labelTextStyle,
    this.hintTextStyle,
    this.onChanged,
    this.inputFormatters,
    this.validator,
    this.controller,
    this.onSubmitted,
    this.labelText,
    this.autoFocus,
    this.style,
    this.textAlign,
    this.errorTextStyle,
    this.obscureText = false,
    this.borderRadius,
    this.textInputAction,
    this.maxLines,
  }) : super(key: key);
  final bool? enabled;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  final TextEditingController? controller;
  final EdgeInsets? margin;
  final Function(String value)? onSubmitted;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final TextStyle? hintTextStyle;
  final Color? fillColor;
  final Color? borderColor;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final bool? autoFocus;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextStyle? errorTextStyle;
  final bool obscureText;
  final double? borderRadius;
  final int? maxLines;

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  final FocusNode _textFieldFocus = FocusNode();
  late Color focusColor;
  late Color borderColor;

  @override
  void initState() {
    focusColor = widget.fillColor ?? AppTheme.secondary;
    borderColor = widget.fillColor ?? widget.borderColor ?? AppTheme.quartz;
    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          focusColor = AppTheme.secondary;
          borderColor = widget.borderColor ?? AppTheme.quartz;
        });
      } else {
        setState(() {
          focusColor = widget.fillColor ?? AppTheme.secondary;
          borderColor = widget.fillColor ?? widget.borderColor ?? AppTheme.quartz;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        style: widget.style,
        enabled: widget.enabled ?? true,
        cursorColor: AppTheme.black.withOpacity(0.6),
        cursorWidth: 3,
        maxLines: widget.maxLines,
        keyboardType: widget.textInputType,
        onChanged: (value) => widget.onChanged,
        validator: widget.validator,
        controller: widget.controller,
        autofocus: widget.autoFocus ?? false,
        onFieldSubmitted: (value) => widget.onSubmitted,
        focusNode: _textFieldFocus,
        textAlign: widget.textAlign ?? TextAlign.start,
        obscureText: widget.obscureText,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: focusColor,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
            borderSide: const BorderSide(color: AppTheme.red),
          ),
          suffixIcon: widget.suffix != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: widget.suffix,
                )
              : null,
          suffixIconConstraints: const BoxConstraints(maxWidth: 32, maxHeight: 30),
          prefixIcon: widget.prefix != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: widget.prefix,
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            vertical: context.screenHeight * 0.02,
            horizontal: widget.prefix != null ? 12 : 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: borderColor,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: borderColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: widget.borderColor ?? AppTheme.quartz,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: borderColor,
              width: 2,
            ),
          ),
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: widget.labelTextStyle ?? Theme.of(context).textTheme.titleMedium!.copyWith(color: AppTheme.spanishGray),
          floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppTheme.primary),
          errorStyle: widget.errorTextStyle,
          hintStyle: widget.hintTextStyle ?? Theme.of(context).textTheme.titleMedium!.copyWith(color: AppTheme.spanishGray),
        ),
      ),
    );
  }
}
