// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:houseapp/home/add_plan.dart';
import 'package:houseapp/home/home_screen_controller.dart';
import 'package:houseapp/home/user_section/user_list.dart';
import 'package:houseapp/theme.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard Utama",
                style: regularTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Tambah Planner",
                style: regularTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: AddPlan(),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Daftar To-Do-List",
                style: regularTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height-400,
                    child: EventList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

