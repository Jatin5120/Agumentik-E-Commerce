part of '../welcome_screen.dart';

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final PageController _controller = PageController();

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to Tokoto, Let's shop!", "image": "assets/images/splash_1.png"},
    {
      "text": "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {"text": "We show the easy way to shop. \nJust stay at home with us", "image": "assets/images/splash_3.png"},
  ];

  static const Duration _pageAnimationDuration = Duration(milliseconds: 500);
  static const Curve _pageAnimationCurve = Curves.easeInOut;

  static final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => _WelcomeContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => _BuildDot(
                          isSelected: currentPage == index,
                          onTap: () => _controller.animateToPage(
                            index,
                            duration: _pageAnimationDuration,
                            curve: _pageAnimationCurve,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                    Button(
                      label: currentPage == 2 ? "Continue" : "Next",
                      onTap: () async {
                        if (currentPage == 2) {
                          _authController.isNewUser = false;
                        } else {
                          _controller.nextPage(
                            duration: _pageAnimationDuration,
                            curve: _pageAnimationCurve,
                          );
                        }
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kUnselectedColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class _BuildDot extends StatelessWidget {
  const _BuildDot({
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: kAnimationDuration,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 6,
        width: isSelected ? 20 : 6,
        decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : kUnselectedColor,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
