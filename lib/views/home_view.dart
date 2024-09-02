import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildHeader(screenHeight, screenWidth),
                const SizedBox(height: 20),
                _buildMainCard(screenHeight, screenWidth),
                const SizedBox(height: 20),
                _buildSearchBar(screenHeight, screenWidth),
                const SizedBox(height: 20),
                _buildTeachersSection(screenHeight, screenWidth),
                const SizedBox(height: 20),
                _buildPromotionBanner(screenHeight, screenWidth),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader(double screenHeight, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: SizedBox(
        width: double.infinity,
        height: 42,
        child: SizedBox(
          width: 215.71,
          height: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/union.png',
                height: 42,
                width: 42,
              ),
              const Spacer(),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'هشام موسى',
                      style: TextStyle(
                        color: Color(0xFFFF641A),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.3,
                      ),
                    ),
                    Text(
                      'المرحلة الثانوية',
                      style: TextStyle(
                        color: Color(0xFF37474F),
                        fontSize: 11,
                        height: 1.3,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/frame-669.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainCard(double screenHeight, double screenWidth) {
    return SizedBox(
      width: 343,
      height: 182.49,
      child: Card(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/intersect.png',
                color: const Color(0xFFFFE7DB).withOpacity(.5),
              ),
            ),
            Positioned(
              left: 10,
              child: Image.asset('assets/images/Learning-cuate 1.png'),
            ),
            Positioned(
              right: 0,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'أدخل الكود وانضم لحصتك الآن!',
                        style: TextStyle(
                          color: Color(0xFFFF641A),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'كل ما عليك هو الحصول علي الكود الخاص \nبك من خلال مركزك التعليمي أو معلمك\n لمشاهدة الحصة أو الحصول  علي\n مذكرة ، واجب أو امتحان.',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF37474F),
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        child: Container(
                          height: 39,
                          width: 131,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFFA980),
                                Color(0xFFFE5E00),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.5, vertical: 10),
                          child: const Text(
                            'أدخل الكود',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1.2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(double screenHeight, double screenWidth) {
    return Container(
      width: 343,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          width: 242,
          height: 21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/mdi_search.png'),
              const SizedBox(width: 2),
              const Text(
                'ابحث عن معلمك أو مركزك التعليمي',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              const Spacer(),
              GestureDetector(
                child: Container(
                  height: 28.43,
                  width: 67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFA980),
                        Color(0xFFFE5E00),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: const Text(
                    'بحث',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeachersSection(double screenHeight, double screenWidth) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'المعلمين',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xFFFF641A),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    const Text(
                      'المحافظة',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF313131),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/Vector 25.png'),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    const Text(
                      'المادة',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF313131),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/Vector 25.png'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTeacherCard(
                  name: 'محمد علي',
                  subject: 'مدرس رياضيات',
                  imageUrl: 'assets/images/ellipse_1081.jpeg',
                  center: 'مركز النصر التعليمي',
                  classes: '12 حصة',
                  exams: '2 امتحان',
                  followers: '122 متابعا',
                  notes: '4 مذكرات',
                ),
                const SizedBox(width: 10),
                _buildTeacherCard(
                  name: 'أحمد خالد',
                  subject: 'مدرس لغة عربية',
                  imageUrl: 'assets/images/ellipse_108.jpeg',
                  center: 'مركز التميز التعليمي',
                  classes: '0 حصة',
                  exams: '1 امتحان',
                  followers: '3 متابعا',
                  notes: '6 مذكرات',
                ),
                const SizedBox(width: 10),
                _buildTeacherCard(
                  name: 'محمد علي',
                  subject: 'مدرس رياضيات',
                  imageUrl: 'assets/images/ellipse_1082.jpeg',
                  center: 'مركز النصر التعليمي',
                  classes: '12 حصة',
                  exams: '2 امتحان',
                  followers: '122 متابعا',
                  notes: '4 مذكرات',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeacherCard({
    required String name,
    required String subject,
    required String imageUrl,
    required String center,
    required String classes,
    required String exams,
    required String followers,
    required String notes,
  }) {
    return Container(
      width: 168,
      height: 198,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        elevation: 3,
        child: Column(
          children: [
            Container(
              width: 168,
              height: 87,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 168,
                      height: 43.5,
                      color: const Color(0xFFFF641A),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: CircleAvatar(
                      radius: 43.5,
                      backgroundColor: Colors
                          .transparent, // Transparent background for outer circle
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors
                            .white, // White background for inner circle to create border effect
                        child: Padding(
                          padding: const EdgeInsets.all(
                              4.0), // Padding for white border
                          child: ClipOval(
                            child: Image.asset(
                              imageUrl,
                              fit: BoxFit.cover,
                              width: 82, // Width for the actual svg picture
                              height: 82, // Height for the actual svg picture
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500, height: 1.2),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    subject,
                    style: const TextStyle(
                      height: 1.2,
                      fontWeight: FontWeight.w300,
                      fontSize: 11,
                      color: Color(0xFFFF641A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xFF6D6D6D),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      _buildInfoIcon(followers, 'assets/images/Vector (1).png'),
                      const SizedBox(
                        width: 5,
                      ),
                      _buildInfoIcon(classes, 'assets/images/Vector (2).png'),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      _buildInfoIcon(notes, 'assets/images/ph_book.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      _buildInfoIcon(exams, 'assets/images/Group.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoIcon(String text, String iconPath) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 7,
            height: 9.1,
          ),
          const SizedBox(width: 3),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionBanner(double screenHeight, double screenWidth) {
    return Container(
      width: 344,
      height: 144,
      decoration: BoxDecoration(
        color: const Color(0xFFFFEDE2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(children: [
        Positioned(
            left: 10,
            top: 5,
            child: Image.asset(
              'assets/images/freepik--Plant--inject-662.png',
              width: 50.91,
              height: 137.96,
            )),
        Positioned(
            left: 30,
            bottom: 0,
            child: Image.asset(
              'assets/images/Group 619.png',
              width: 92,
              height: 74,
            )),
        Positioned(
            right: 20,
            bottom: 10,
            child: Image.asset(
              'assets/images/Group 583.png',
              width: 91,
              height: 5,
            )),
        const Positioned(
          right: 10,
          top: 10,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'شارك التطبيق واحصل على خصومات مميزة!',
                  style: TextStyle(
                    color: Color(0xFFfe5e00),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'بمشاركتك تطبيق حصة مع مزيد من الأصدقاء \nستحصل علي شارة العضو المميز والتي ستتيح\n لك خصومات مميزة تصل إلى 70 % على أكواد \nالحصص بحالة تم طلبها من التطبيق.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SizedBox(
      height: 65,
      width: 175,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group (1).png'),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector (3).png'),
              label: 'الإشعارات',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Vector (4).png'),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Group 622.png'),
              label: 'حصصي',
            ),
          ],
          selectedItemColor: const Color(0xFFfe5e00),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 0,
          onTap: (index) {},
        ),
      ),
    );
  }
}
