import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rider/Helper/Session.dart';

import 'Helper/Color.dart';

class MaintainanceScreen extends StatelessWidget {
  const MaintainanceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/images/Maintenance.svg",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    getTranslated(context, 'UNDER_MAINTAIN_LBL')!,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  getTranslated(context, 'UNDER_MAINTAIN_SUB_LBL')!,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: darkFontColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
