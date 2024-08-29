import 'package:flutter/material.dart';

class OnboardingPageModel {
  final String title;
  final String description;
  final String imageAsset;
  final Color bgColor;
  final Color buttonColor;

  OnboardingPageModel({
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.bgColor,
    required this.buttonColor,
  });
}