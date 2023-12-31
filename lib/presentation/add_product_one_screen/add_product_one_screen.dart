import 'package:flutter/material.dart';
import 'package:seller_app/core/app_export.dart';
import 'package:seller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:seller_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:seller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:seller_app/widgets/custom_drop_down.dart';
import 'package:seller_app/widgets/custom_elevated_button.dart';
import 'package:seller_app/widgets/custom_text_form_field.dart';

class AddProductOneScreen extends StatelessWidget {
  AddProductOneScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController nameController = TextEditingController();

  TextEditingController foodDescriptionController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController offerPriceEditTextController = TextEditingController();

  TextEditingController stockQuantityValueEditTextController =
      TextEditingController();

  TextEditingController timeEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 9.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrame(context),
                  SizedBox(height: 21.v),
                  Text(
                    "Product Information",
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Select Type ",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 7.v),
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 29.v, 20.h, 29.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPath3391,
                        height: 5.v,
                        width: 9.h,
                      ),
                    ),
                    hintText: "Select Product Type",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    items: dropdownItemList,
                    contentPadding: EdgeInsets.only(
                      left: 20.h,
                      top: 21.v,
                      bottom: 21.v,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Food Nature",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 9.v),
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 29.v, 20.h, 29.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPath3391,
                        height: 5.v,
                        width: 9.h,
                      ),
                    ),
                    hintText: "Non-Veg",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    items: dropdownItemList1,
                    contentPadding: EdgeInsets.only(
                      left: 20.h,
                      top: 21.v,
                      bottom: 21.v,
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Food Name",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.v),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: "Food Name",
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "Food Description",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 8.v),
                  CustomTextFormField(
                    controller: foodDescriptionController,
                    hintText: "Food Description",
                    hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                    maxLines: 4,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 21.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL20,
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "Selling Price ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: priceController,
                    hintText: "Selling price",
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 3.v),
                  _buildSellingPriceEditText(context),
                  SizedBox(height: 9.v),
                  Text(
                    "Offer Price ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  _buildOfferPriceEditText(context),
                  SizedBox(height: 10.v),
                  Text(
                    "Stock",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.v),
                  _buildStockQuantityValueEditText(context),
                  SizedBox(height: 9.v),
                  Text(
                    "Available From",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  _buildEightySeven(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 58.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 9.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Add Product",
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 100.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgMap,
            height: 26.v,
            width: 30.h,
          ),
          SizedBox(height: 21.v),
          Text(
            "Add Product Image",
            style: CustomTextStyles.labelLargePrimary,
          ),
        ],
      ),
    );
  }

  Widget _buildFoodDescriptionEditText(BuildContext context) {
    return CustomTextFormField(
      controller: foodDescriptionController,
      hintText: "Food Description",
      hintStyle: CustomTextStyles.bodyMediumOnPrimary,
      maxLines: 4,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 21.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL20,
    );
  }

  /// Section Widget
  Widget _buildSellingPriceEditText(BuildContext context) {
    return CustomTextFormField(
      controller: priceController,
      hintText: "Selling price",
    );
  }

  /// Section Widget
  Widget _buildOfferPriceEditText(BuildContext context) {
    return CustomTextFormField(
      controller: offerPriceEditTextController,
      hintText: "Price",
    );
  }

  /// Section Widget
  Widget _buildStockQuantityValueEditText(BuildContext context) {
    return CustomTextFormField(
      controller: stockQuantityValueEditTextController,
      hintText: "Stock Quantity",
    );
  }

  /// Section Widget
  Widget _buildTimeEditText(BuildContext context) {
    return CustomTextFormField(
      width: 150.h,
      controller: timeEditTextController,
      hintText: "Time",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onPrimaryContainer,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blueGray1003f.withOpacity(0.25),
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 40.v,
            width: 150.h,
            padding: EdgeInsets.only(
              left: 60.h,
              top: 10.v,
              bottom: 10.v,
            ),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Time",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Time",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 23.v,
            bottom: 15.v,
          ),
          child: SizedBox(
            width: 10.h,
            child: Divider(
              color: appTheme.gray800,
            ),
          ),
        ),
        _buildTimeEditText(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Submit",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 31.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
    );
  }
}
