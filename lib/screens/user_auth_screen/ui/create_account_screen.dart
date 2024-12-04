import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_hive/auth_handler/user_auth.dart';
import 'package:habit_hive/common_widgets/gradient_scaffold.dart';
import 'package:habit_hive/common_widgets/gradient_text.dart';
import 'package:habit_hive/screens/home/ui/home_screen.dart';
import 'package:habit_hive/screens/user_auth_screen/bloc/user_auth_bloc.dart';
import 'package:habit_hive/screens/user_auth_screen/bloc/user_auth_state.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late bool rememberMe;

  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    rememberMe = false;

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final createAccountBloc = context.read<SigninBloc>();
    if (UserAuth().isUserLoggedIn()) {
      const HomeScreen();
    }
    return GradientScaffold(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ',
                  style: GoogleFonts.acme(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                GradientText(
                    text: 'HABITHIVE',
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 174, 0, 1),
                        Color.fromRGBO(255, 255, 255, 1),
                      ],
                    ),
                    style: GoogleFonts.acme(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ))
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hi',
                  style: GoogleFonts.almarai(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 184,
                  width: 193,
                  child: Image.asset(
                    'assets/auth_pic.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              "Let's create account",
              style: GoogleFonts.almarai(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 329,
              width: 379,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 174, 0, 0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              hintText: 'First name',
                              hintStyle: GoogleFonts.almarai(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: TextFormField(
                            controller: lastNameController,
                            decoration: InputDecoration(
                              hintText: 'Last name',
                              hintStyle: GoogleFonts.almarai(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: GoogleFonts.almarai(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '.............',
                        prefixIcon: const Icon(Icons.lock_outline),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6) {
                          return 'Password should have six characters atleast';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember me',
                          style: GoogleFonts.almarai(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: const Color.fromRGBO(255, 255, 255, 0.8),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                          width: 43,
                          child: Switch(
                            activeColor: const Color.fromRGBO(255, 166, 41, 1),
                            value: rememberMe,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    BlocBuilder<SigninBloc, SigninState>(
                      bloc: createAccountBloc,
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return const CircularProgressIndicator();
                        } else if (state is ErrorState) {
                          return Text(
                            state.errorMessage,
                            style: const TextStyle(color: Colors.red),
                          );
                        }
                        return InkWell(
                          onTap: () {
                            UserAuth().createAccount(
                                email: emailController.text,
                                password: passwordController.text);
                            if (context.mounted &&
                                UserAuth().isUserLoggedIn()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Account created')));

                              setState(() {});
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 174, 0, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Create account',
                                style: GoogleFonts.almarai(
                                  fontSize: 21,
                                  color: const Color.fromRGBO(74, 51, 0, 1),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'Already have an account?  ',
                  style: GoogleFonts.almarai(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 255, 255, 0.8)),
                ),
                InkWell(
                  onTap: () {
                    context.go('/login');
                  },
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.almarai(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 174, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
