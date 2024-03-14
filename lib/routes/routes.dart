import 'package:flutter/material.dart';
import 'package:home_services/others/pages/main/layout.dart';
import 'package:home_services/others/pages/sub/allcategories.dart';
import 'package:home_services/others/pages/sub/categories/acrepair.dart';
import 'package:home_services/others/pages/sub/categories/appliance.dart';
import 'package:home_services/others/pages/sub/categories/beauty.dart';
import 'package:home_services/others/pages/sub/categories/cleaning.dart';
import 'package:home_services/others/pages/sub/categories/electronics.dart';
import 'package:home_services/others/pages/sub/categories/mens_salon.dart';
import 'package:home_services/others/pages/sub/categories/painting.dart';
import 'package:home_services/others/pages/sub/categories/plumbing.dart';
import 'package:home_services/others/pages/sub/categories/shifting.dart';
import 'package:home_services/others/pages/sub/service_detail.dart';

import 'package:home_services/routes/splash.dart';

final routes={
'/': (BuildContext context) => const SplashScreen(),
  '/homePage': (BuildContext context) =>  const Layout(),
  '/allcategories': (BuildContext context) =>  const Allcategories(),
   '/shifting': (BuildContext context) =>  const Shifting(),
   '/Appliance': (BuildContext context) =>  const Appliance(),
   '/Beauty': (BuildContext context) =>  const Beauty(),
   '/Cleaing': (BuildContext context) =>  const Cleaing(),
   '/Electronics': (BuildContext context) =>  const Electronics(),
   '/MenSalaon': (BuildContext context) =>  const MenSalaon(),
   '/Painting': (BuildContext context) =>  const Painting(),
   '/Plumbing': (BuildContext context) =>  const Plumbing(),
   '/AcRepair': (BuildContext context) =>  const AcRepair(),
    '/Servicedetailpage': (BuildContext context) =>  const Servicedetailpage(),
   
};