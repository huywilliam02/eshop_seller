import 'package:flutter/material.dart';
import 'package:citgroupvn_eshop_seller/utill/color_resources.dart';
import 'package:citgroupvn_eshop_seller/utill/dimensions.dart';
import 'package:citgroupvn_eshop_seller/utill/styles.dart';

class CustomFieldWithTitle extends StatelessWidget {
  final Widget customTextField;
  final String? title;
  final bool requiredField;
  final bool isPadding;
  final bool isSKU;
  final bool limitSet;
  final String? setLimitTitle;
  final Function? onTap;
  final bool isCoupon;
  const CustomFieldWithTitle({
    Key? key,
    required this.customTextField,
    this.title,
    this.setLimitTitle,
    this.requiredField = false,
    this.isPadding = true,
    this.isSKU = false,
    this.limitSet = false,
    this.onTap,
    this.isCoupon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isCoupon
          ? const EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeDefault,
              vertical: Dimensions.paddingSizeExtraSmall)
          : isPadding
              ? const EdgeInsets.all(Dimensions.paddingSizeDefault)
              : const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: title,
                  style: robotoRegular.copyWith(
                      color: ColorResources.getTextColor(context)),
                  children: <TextSpan>[
                    requiredField
                        ? TextSpan(
                            text: '  *',
                            style: robotoRegular.copyWith(color: Colors.red))
                        : const TextSpan(),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.paddingSizeExtraSmall),
          customTextField,
        ],
      ),
    );
  }
}
