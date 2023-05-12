import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/core/constants/app_dimensions.dart';
import 'package:donation/presentation/screens/sign_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../manger/auth_manger/login_manger/login_cubit.dart';
import '../manger/auth_manger/login_manger/login_states.dart';
import '../widgets/animated_icon_widget.dart';
import '../widgets/buttom_up-container_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_snackbar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/sign_in_up_row_widget.dart';
import '../widgets/text_input_widget.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is SuccessLoginState) {
              Navigator.pushReplacementNamed(
                context,
                HomeScreen.routeName,
              );
            } else if (state is ErrorLoginState) {
              showCustomSnackBar(
                context: context,
                message: state.errorMessage,
              );
            }
          },
          builder: (context, state) {
            var formKey = GlobalKey<FormState>();
            var cubit = BlocProvider.of<LoginCubit>(context);
            if (state is LoadingLoginState) {
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
                      height: AppDimensions.containerLongHeight,
                      widget: BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const InputText(
                                  text: AppStrings.signInText,
                                ),
                                CustomTextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  suffix: Icons.email,
                                  suffixIconColor: Colors.pinkAccent,
                                  hintText: AppStrings.emailHint,
                                  color: AppColors.offWhiteColor,
                                  onChanged: (value) {
                                    cubit.userMail = value;
                                  },
                                  onSubmitted: (value) {
                                    cubit.userMail = value;
                                  },
                                ),
                                const InputText(
                                  text: AppStrings.signUpText,
                                ),
                                CustomTextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  // prefix: cubit.prefixIcon,
                                  // prefixFunction: () {
                                  //   cubit.changePasswordVisibility();
                                  // },
                                  // obscure: cubit.isVisible,
                                  suffix: Icons.key_rounded,
                                  suffixIconColor: AppColors.greenColor,
                                  hintText: AppStrings.passwordHint,
                                  color: AppColors.offWhiteColor,
                                  onChanged: (value) {
                                    cubit.userPassword = value;
                                  },
                                  onSubmitted: (value) {
                                    cubit.userPassword = value;
                                  },
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                CustomButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      cubit.userLogin();
                                    }
                                  },
                                  backGroundColor: AppColors.lightRedColor,
                                  icon: Icons.login_rounded,
                                  label: AppStrings.signIn,
                                ),
                                SignInUpRow(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      SignUpScreen.routeName,
                                    );
                                  },
                                  buttonText: AppStrings.signUp,
                                  text: AppStrings.hasNoEmail,
                                ),
                              ],
                            ),
                          );
                        },
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
