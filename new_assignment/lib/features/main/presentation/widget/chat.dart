import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:new_assignment/features/auth/presentation/screens/login_screen.dart';
import 'package:new_assignment/features/main/presentation/provider/main_provider.dart';
import 'package:provider/provider.dart';

class DonutChartExample extends StatelessWidget {
  const DonutChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    final callData = context.read<MainProvider>().callListResponse;
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 4,  // Space between sections (visible as white space)
              centerSpaceRadius: 80,
              sections: [
                  PieChartSectionData(
                  value: double.parse(callData!.called.toString()),
                  color: Colors.blue,
                  radius: 30,
                  showTitle: false,
                ),
                 PieChartSectionData(
                  value: double.parse(callData.rescheduled.toString()),
                  color: Colors.purple,
                  radius: 40,
                  showTitle: false,
                ),
                PieChartSectionData(
                  value: double.parse(callData.pending.toString()),
                  color: Colors.orange,
                  radius: 30,
                  showTitle: false,
                ),
              
               
              ],
              startDegreeOffset: -90,
              borderData: FlBorderData(
                show: true,
                border: Border.all(
                  color: Colors.white,  // This makes the space between sections white
                  width: 4,            // Should match or exceed sectionsSpace
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}