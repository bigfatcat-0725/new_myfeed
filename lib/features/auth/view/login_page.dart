import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_myfeed/core/constants/app_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Row(
        children: [
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(name: TABLET)],
            child: Expanded(
              flex: 4,
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: AppColors.primaryColor,
                child: Image.asset(
                  'assets/images/login_back.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveValue(
                context,
                defaultValue: 40,
                valueWhen: const [
                  Condition.largerThan(
                    name: TABLET,
                    value: 80,
                  )
                ],
              ).value!.toDouble()),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 50),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        2.5,
                      ),
                      child: TextFormField(
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: '아이디',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        2.5,
                      ),
                      child: TextFormField(
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: '비밀번호',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 17.5,
                          height: 17.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2.5),
                            border: Border.all(
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '로그인 유지',
                          style: TextStyle(
                            fontSize: 12,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.primaryColor,
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                        child: const Text('로그인'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.textColor,
                          ),
                          child: const Text(
                            '회원가입',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            '|',
                            style: TextStyle(
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.textColor,
                          ),
                          child: Text(
                            '비밀번호찾기',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
