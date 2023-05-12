import 'package:donation/core/widgets/loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/styles/text_styles.dart';
import '../manger/auth_manger/register_manger/register_cubit.dart';
import '../manger/auth_manger/register_manger/register_states.dart';
import '../widgets/animated_icon_widget.dart';
import '../widgets/buttom_up-container_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_input_widget.dart';
import '../widgets/custom_snackbar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/sign_in_up_row_widget.dart';
import '../widgets/suggestion_item_widget.dart';
import '../widgets/text_input_widget.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'SignUpScreen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is SuccessRegisterState) {
              Navigator.pushReplacementNamed(
                context,
                HomeScreen.routeName,
              );
            } else if (state is ErrorRegisterState) {
              showCustomSnackBar(
                context: context,
                message: state.errorMessage,
              );
            }
          },
          builder: (context, state) {
            var formKey = GlobalKey<FormState>();
            var cubit = BlocProvider.of<RegisterCubit>(context);
            if (state is LoadingRegisterState) {
              return const LoadingWidget();
            }
            return SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const CustomAnimatedIcon(
                      iconSize: 50.0,
                      radius: 100.0,
                    ),
                    BottomUpContainer(
                      color: AppColors.containerColor,
                      height: 1400,
                      widget: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              AppStrings.enterTheseFields,
                              style: TextStyles.hugeTextStyle(),
                            ),
                            const InputText(
                              text: AppStrings.birthday,
                            ),
                            CustomInputWidget(
                              icon: Icons.date_range_rounded,
                              iconColor: AppColors.greenColor,
                              text: cubit.birthdayHint,
                              buttonLabel: AppStrings.birthdayHint,
                              buttonFunction: () async {
                                final value = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2000),
                                  firstDate: DateTime(1960),
                                  lastDate: DateTime.now(),
                                );
                                cubit.changeBirthdayHint(
                                  value: value.toString().substring(0, 10),
                                );
                                cubit.userModel.birthDate =
                                    value.toString().substring(0, 10);
                              },
                            ),
                            const InputText(
                              text: AppStrings.location,
                            ),
                            CustomInputWidget(
                              icon: Icons.location_on_rounded,
                              iconColor: Colors.lightBlue,
                              text: cubit.regionHint,
                              buttonLabel: AppStrings.locationHint,
                              buttonFunction: () async {
                                await cubit.getUserPosition();
                              },
                            ),
                            const InputText(
                              text: AppStrings.bloodGroup,
                            ),
                            CustomInputWidget(
                              icon: Icons.water_drop,
                              iconColor: AppColors.darkRedColor,
                              text: cubit.bloodGroupHint,
                              buttonLabel: AppStrings.bloodGroupHint,
                              buttonFunction: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                    child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: AppStrings.bloodGroups.length,
                                      itemBuilder: (context, index) =>
                                          SuggestionItem(
                                        onTap: () {
                                          cubit.changeBloodGroupHint(
                                            value:
                                                AppStrings.bloodGroups[index],
                                          );
                                          cubit.userModel.bloodGroup =
                                              AppStrings.bloodGroups[index];
                                          Navigator.pop(context);
                                        },
                                        suggestion:
                                            AppStrings.bloodGroups[index],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Divider(
                                thickness: 1.5,
                                color: AppColors.offWhiteColor.withOpacity(0.3),
                              ),
                            ),
                            const InputText(
                              text: AppStrings.name,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.name,
                              suffix: Icons.perm_identity_rounded,
                              hintText: AppStrings.nameHint,
                              color: AppColors.offWhiteColor,
                              suffixIconColor: AppColors.greenColor,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.name = value;
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.name = value;
                                }
                              },
                            ),
                            const InputText(
                              text: AppStrings.nationalId,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.number,
                              suffix: Icons.credit_card,
                              hintText: AppStrings.nationalIdHint,
                              color: AppColors.offWhiteColor,
                              suffixIconColor: Colors.indigoAccent,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.nationalId = value;
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.nationalId = value;
                                }
                              },
                            ),
                            const InputText(
                              text: AppStrings.phone,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.phone,
                              suffix: Icons.phone_enabled_rounded,
                              hintText: AppStrings.phoneHint,
                              color: AppColors.offWhiteColor,
                              suffixIconColor: Colors.amberAccent,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.phone = value;
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.phone = value;
                                }
                              },
                            ),
                            const InputText(
                              text: AppStrings.email,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.emailAddress,
                              suffix: Icons.email_rounded,
                              hintText: AppStrings.emailHint,
                              color: AppColors.offWhiteColor,
                              suffixIconColor: Colors.pinkAccent,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.email = value;
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.email = value;
                                }
                              },
                            ),
                            const InputText(
                              text: AppStrings.password,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              suffix: Icons.key_rounded,
                              hintText: AppStrings.passwordHint,
                              color: AppColors.offWhiteColor,
                              suffixIconColor: AppColors.darkRedColor,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.password = value;
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isNotEmpty) {
                                  cubit.userModel.password = value;
                                }
                              },
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            CustomButton(
                              onPressed: () async {
                                await Future.delayed(
                                  const Duration(
                                    milliseconds: 250,
                                  ),
                                );
                                if (formKey.currentState!.validate()) {
                                  cubit.registerUser();
                                }
                              },
                              backGroundColor: AppColors.lightRedColor,
                              icon: Icons.account_box_rounded,
                              label: AppStrings.signUp,
                            ),
                            SignInUpRow(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  LoginScreen.routeName,
                                );
                              },
                              buttonText: AppStrings.signIn,
                              text: AppStrings.hasEmail,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
