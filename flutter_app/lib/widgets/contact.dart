
import 'package:flutter/material.dart';

class Contact {
  const Contact({
    required this.name,
    required this.jobTitle,
    required this.phone,
    String? this.url,
  });

  final String name;
  final String jobTitle;
  final String phone;
  final String? url;
  }
