import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/core/widgets/big_blue_button.dart';
import 'package:new_assignment/features/main/presentation/provider/main_provider.dart';
import 'package:new_assignment/features/main/presentation/screens/main_page.dart';
import 'package:new_assignment/features/main/presentation/screens/video_screen.dart';
import 'package:new_assignment/features/main/presentation/widget/chat.dart';
import 'package:new_assignment/gen/assets.gen.dart';
import 'package:new_assignment/main.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MainProvider>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: provider.isLoading
            ? Center(child: const CircularProgressIndicator())
            : (provider.callListResponse == null ||
                    (provider.callListResponse?.pending ?? 0) == 0)
                ? _defaultUi(context)
                : callData(context),
      )),
    );
  }
}

Widget _defaultUi(BuildContext context) {
  Size size = MediaQuery.sizeOf(context);
  return Column(
    children: [
      header('Hello Swati', 'Welcome to Calley!'),
      const SizedBox(height: 16),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.45,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E3365),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'LOAD NUMBER TO CALL',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),

          // Overlapping image
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context)
                            .style
                            .copyWith(fontSize: 16),
                        children: const [
                          TextSpan(text: 'Visit '),
                          TextSpan(
                            text: 'https://app.getcalley.com',
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                            text:
                                ' to upload numbers that you wish to call using Calley Mobile App.',
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          Assets.icons.dashboardNew.path,
                          height: 220,
                          width: 220,
                        ))
                  ],
                ),
              )),
        ],
      ),
      const Spacer(),
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            height: 45,
            width: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: const Color(0xFF0EB01D),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              Assets.icons.whatsappIcon.path,
              height: 24,
              width: 24,
            ),
          ),
          Expanded(
            child: bigBlueButton(
              onPressed: () {},
              text: 'Start Calling Now',
            ),
          ),
        ],
      ),
    ],
  );
}

Widget callData(BuildContext context) {
  final provider = context.read<MainProvider>();
  final calls = provider.callListResponse!.calls?.length;
  final callData = provider.callListResponse!;
  return SafeArea(
      child: Column(
    children: [
      callHeader(calls.toString(), context),
      const SizedBox(
        height: 50,
      ),
      DonutChartExample(),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          infoDataCard(
              color: const Color(0xFFFEF0DB),
              statusBarColor: const Color(0xFFFAAB3C),
              status: 'Pending',
              noOfCalls: callData.pending.toString()),
          infoDataCard(
              color: const Color(0xFFDDFCE0),
              status: 'Done',
              statusBarColor: const Color(0xFF0EB01D),
              noOfCalls: callData.called.toString()),
          infoDataCard(
              color: const Color(0xFFF3EEFE),
              status: 'Schedule',
              noOfCalls: callData.rescheduled.toString(),
              statusBarColor: const Color(0xFF4E1BD9))
        ],
      ),
      const SizedBox(
        height: 60,
      ),
      bigBlueButton(onPressed: () {}, text: 'Start Calling Now')
    ],
  ));
}

Widget callHeader(String noOfCalls, BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withOpacity(0.4), width: 1)),
    child: Row(
      children: [
        Column(
          children: [
            Text(
              'Test List',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: GoogleFonts.inter().fontFamily),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                      text: '$noOfCalls ',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 32,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: 'calls',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: GoogleFonts.inter().fontFamily)),
                ],
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.blue),
          child: const Center(
            child: Text(
              'S',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    ),
  );
}

Widget infoDataCard(
    {required Color statusBarColor,
    required Color color,
    required String status,
    required String noOfCalls}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 6,
          decoration: BoxDecoration(
              color: statusBarColor, borderRadius: BorderRadius.circular(8)),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.inter().fontFamily),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '$noOfCalls ',
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                const TextSpan(
                    text: 'Calls',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black))
              ]),
            )
          ],
        )
      ],
    ),
  );
}
