import 'package:atsign_atmosphere_pro/desktop_screens/desktop_my_files/widgets/desktop_file_card.dart';
import 'package:atsign_atmosphere_pro/screens/common_widgets/provider_handler.dart';
import 'package:atsign_atmosphere_pro/utils/text_strings.dart';
import 'package:atsign_atmosphere_pro/view_models/history_provider.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:at_common_flutter/services/size_config.dart';
import 'package:open_file/open_file.dart';

class DesktopVideos extends StatefulWidget {
  @override
  _DesktopVideosState createState() => _DesktopVideosState();
}

class _DesktopVideosState extends State<DesktopVideos> {
  @override
  Widget build(BuildContext context) {
    return ProviderHandler<HistoryProvider>(
      functionName: 'sort_files',
      load: (provider) {
        // provider.getReceivedHistory();
      },
      successBuilder: (provider) {
        return provider.receivedVideos.isEmpty
            ? Center(
                child: Text(TextStrings().noFilesFound),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                margin: EdgeInsets.symmetric(
                    vertical: 10.toHeight, horizontal: 10.toWidth),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    runSpacing: 10.0,
                    spacing: 30.0,
                    children: List.generate(
                      provider.receivedVideos.length,
                      (index) {
                        if (provider.receivedVideos[index].filePath!
                            .split(Platform.pathSeparator)
                            .last
                            .toLowerCase()
                            .contains(provider.fileSearchText)) {
                          return InkWell(
                            onTap: () async {
                              File test = File(
                                  provider.receivedVideos[index].filePath!);
                              bool fileExists = await test.exists();
                              if (fileExists) {
                                await OpenFile.open(
                                    provider.receivedVideos[index].filePath);
                              }
                            },
                            child: DesktopFileCard(
                              title: provider.receivedVideos[index].filePath!
                                  .split(Platform.pathSeparator)
                                  .last,
                              filePath: provider.receivedVideos[index].filePath,
                            ),
                          );
                        } else {
                          return SizedBox();
                        }
                      },
                    ),
                  ),
                ),
              );
      },
    );
  }
}
