library services;

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:who_e_learning/app/config/routes/routes_library.dart';
import 'package:who_e_learning/app/features/login/log_in_library.dart';
import 'package:device_info_plus/device_info_plus.dart';
import '../../constants/constants_library.dart';
import '../../features/profile/profile_library.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

import 'package:permission_handler/permission_handler.dart';

import '../helper/helper_library.dart';

part 'src/shared_service.dart';
part 'src/base_client.dart';
part 'src/exception_handlers.dart';
part 'src/deviceinfo_service.dart';
part 'src/http_override_service.dart';
part 'src/time_calculate_service.dart';
part 'src/compress_image_service.dart';

part 'src/permission_util.dart';
part 'src/connectivity_check_service.dart';
