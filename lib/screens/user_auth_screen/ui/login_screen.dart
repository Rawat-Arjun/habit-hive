import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_hive/common_widgets/gradient_scaffold.dart';
import 'package:habit_hive/common_widgets/gradient_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  'Log in',
                  style: GoogleFonts.almarai(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 184,
                  width: 193,
                  child: Image.network(
                    'assets/auth_pic.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              height: 332,
              width: 376,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 174, 0, 0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(9, 16, 11, 13),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person_2_outlined),
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
                    const SizedBox(height: 14),
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
                    ),
                    const SizedBox(height: 17),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 48,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 174, 0, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Log in ',
                            style: GoogleFonts.almarai(
                              fontSize: 21,
                              color: const Color.fromRGBO(74, 51, 0, 1),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      'or',
                      style: GoogleFonts.almarai(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 42,
                            width: 38,
                            child: Image.asset(
                              'assets/Google.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 48,
                            width: 76,
                            child: Image.asset(
                              'assets/Apple.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 40,
                            width: 70,
                            child: Image.asset(
                              'assets/Facebook.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Text(
                  "Don't have an account?  ",
                  style: GoogleFonts.almarai(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 255, 255, 0.8)),
                ),
                InkWell(
                  onTap: () {
                    context.go('/create-account');
                  },
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.almarai(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color.fromRGBO(255, 174, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot your password?',
                style: GoogleFonts.almarai(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: const Color.fromRGBO(255, 176, 0, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
