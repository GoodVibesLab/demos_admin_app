import 'package:flutter/material.dart';

const String supabaseUrl = 'https://tuqmklhfgfolexelqzhd.supabase.co';
const String supabaseApiKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1cW1rbGhmZ2ZvbGV4ZWxxemhkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODUwMTg4ODksImV4cCI6MjAwMDU5NDg4OX0.FvRpRfeOH9ffuCehn5X5a0X-ubZ3WztD_4qSpUKI-HA';

final GlobalKey<ScaffoldMessengerState> snackbarKey =
GlobalKey<ScaffoldMessengerState>();

const int maxPollOptions = 10;