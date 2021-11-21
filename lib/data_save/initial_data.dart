import 'package:flutter/material.dart';


class InitialData
{
  static final InitialData _initialData = InitialData._internal();
  factory InitialData(){return _initialData;}
  InitialData._internal();

  late String name;

}