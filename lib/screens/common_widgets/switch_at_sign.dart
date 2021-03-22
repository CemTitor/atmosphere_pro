import 'dart:math';

import 'package:at_common_flutter/services/size_config.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:atsign_atmosphere_pro/routes/route_names.dart';
import 'package:atsign_atmosphere_pro/screens/welcome_screen/welcome_screen.dart';
import 'package:atsign_atmosphere_pro/services/backend_service.dart';
import 'package:atsign_atmosphere_pro/utils/colors.dart';
import 'package:atsign_atmosphere_pro/utils/constants.dart';
import 'package:atsign_atmosphere_pro/utils/text_styles.dart';
import 'package:atsign_atmosphere_pro/view_models/file_transfer_provider.dart';
import 'package:atsign_atmosphere_pro/view_models/welcome_screen_view_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AtSignBottomSheet extends StatefulWidget {
  final List<String> atSignList;
  AtSignBottomSheet({Key key, this.atSignList}) : super(key: key);

  @override
  _AtSignBottomSheetState createState() => _AtSignBottomSheetState();
}

class _AtSignBottomSheetState extends State<AtSignBottomSheet> {
  BackendService backendService = BackendService.getInstance();
  bool isLoading = false;
  var atClientPrefernce;
  @override
  Widget build(BuildContext context) {
    BuildContext bottomSheetContext = context;
    backendService
        .getAtClientPreference()
        .then((value) => atClientPrefernce = value);
    Random r = Random();
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: BottomSheet(
            onClosing: () {},
            backgroundColor: Colors.transparent,
            builder: (context) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Container(
                height: 100,
                width: SizeConfig().screenWidth,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.atSignList.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: isLoading
                            ? () {}
                            : () async {
                                setState(() {
                                  isLoading = true;
                                });

                                await backendService.checkToOnboard(
                                    atSign: widget.atSignList[index]);

                                Provider.of<WelcomeScreenProvider>(context,
                                        listen: false)
                                    .selectedContacts = [];
                                Provider.of<FileTransferProvider>(context,
                                        listen: false)
                                    .selectedFiles = [];
                                setState(() {
                                  isLoading = false;
                                });
                              },
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Column(
                            children: [
                              Container(
                                height: 40.toFont,
                                width: 40.toFont,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, r.nextInt(255),
                                      r.nextInt(255), r.nextInt(255)),
                                  borderRadius:
                                      BorderRadius.circular(50.toWidth),
                                ),
                                child: Center(
                                  child: Text(
                                    widget.atSignList[index]
                                        .substring(0, 2)
                                        .toUpperCase(),
                                    style: CustomTextStyles.whiteBold(
                                        size: (50 ~/ 3)),
                                  ),
                                ),
                              ),
                              Text(widget.atSignList[index])
                            ],
                          ),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          isLoading = true;
                        });
                        await backendService.checkToOnboard(atSign: "");

                        setState(() {
                          isLoading = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.orange,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        isLoading
            ? Center(
                child: Column(
                  children: [
                    Text(
                      'Switching atsign...',
                      style: CustomTextStyles.orangeMedium16,
                    ),
                    SizedBox(height: 10),
                    CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorConstants.redText)),
                  ],
                ),
              )
            : SizedBox(
                height: 100,
              ),
      ],
    );
  }
}