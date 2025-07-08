import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/features/auth/presentation/provider/auth_provider.dart';
import 'package:new_assignment/features/main/presentation/provider/main_provider.dart';
import 'package:new_assignment/features/main/presentation/screens/calender_screen.dart';
import 'package:new_assignment/features/main/presentation/screens/call_screen.dart';
import 'package:new_assignment/features/main/presentation/screens/contacts.dart';
import 'package:new_assignment/features/main/presentation/screens/settinf_screen.dart';
import 'package:new_assignment/features/main/presentation/widget/drawer.dart';
import 'package:provider/provider.dart';
import '../../../../gen/assets.gen.dart';
import 'dashboard_screen.dart';
import 'video_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          drawer: const CustomAppDrawer(),
          appBar: AppBar(
            title: Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.inter().fontFamily,
              ),
            ),
            actions: [
              Image.asset(Assets.icons.headphoneIcon.path,
                  height: 20, width: 20),
              const SizedBox(width: 16),
              Image.asset(Assets.icons.bell.path, height: 20, width: 20),
              const SizedBox(width: 16),
            ],
          ),
          body: IndexedStack(
            index: provider.currentIndex,
            children: const [
              DashboardScreen(),
              ContactsScreen(),
              VideoScreen(),
              CallScreen(),
              CalenderScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: provider.currentIndex,
            onTap: (index) {
              if (index == 2) {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  builder: (context) => _buildCallingListBottomSheet(context),
                );
              } else {
                provider.setIndex(index);
              }
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(Assets.icons.homeIcon.path,
                      height: 24, width: 24),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(Assets.icons.contacts.path,
                      height: 24, width: 24),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF2563EB),
                    ),
                    child: Image.asset(
                      Assets.icons.playIcon.path,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.icons.callIcon.path,
                    height: 24,
                    width: 24,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.icons.calender.path,
                    height: 24,
                    width: 24,
                  ),
                  label: ''),
            ],
          ),
        );
      },
    );
  }
}

Widget _buildCallingListBottomSheet(BuildContext context) {
  return LayoutBuilder(
    builder: (context, constraints) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          // White rounded container
      
          // Overlapping header
          Positioned(
            top: -10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
               height: 65,
                width: constraints.maxWidth,
                padding: const EdgeInsets.only(top: 12, bottom: 22),
                decoration: const BoxDecoration(
                  color: Color(0xFF1E3365),
                  // borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'CALLING LISTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
              Container(
            width: constraints.maxWidth,
            margin: const EdgeInsets.only(
                top: 40), // leaves room for the header overlap
            padding:
                const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Your FIRST card
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        'Select Calling List',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, fontFamily: GoogleFonts.inter().fontFamily),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E5EFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:  Row(
                          children: [
                            const Icon(Icons.refresh, color: Colors.white, size: 16),
                            const SizedBox(width: 4),
                            Text('Refresh',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,fontWeight: FontWeight.w600, fontFamily: GoogleFonts.inter().fontFamily)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Your SECOND card
                GestureDetector(
                  onTap: () async {
                    final provider =
                        context.read<MainProvider>().callListResponse;
                    final userData =
                        context.read<AuthProvider>().loginResponseModel;

                    try {
                      Navigator.pop(context);

                      await context.read<MainProvider>().fetchListItems(
                            '68626fb697757cb741f449b9',
                            userData?.user.email ?? '',
                          );
                    } on DioException catch (error) {
                      Navigator.pop(context);
                      final msg = error.response?.data['message']?.toString() ??
                          error.message ??
                          'Network error';
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(msg)),
                      );
                    } catch (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Something went wrong')),
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Test List', style: TextStyle(fontSize: 16)),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      );
    },
  );
}
