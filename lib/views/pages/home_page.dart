import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:slyde_messenger/resources/animations/slideAnimation.dart';
import 'package:slyde_messenger/resources/custom_colors.dart';
import 'package:slyde_messenger/viewmodels/app_viewmodel.dart';
import 'package:slyde_messenger/viewmodels/homepage_viewmodel.dart';
import 'package:slyde_messenger/views/pages/navigation_pages/new_secret_chat.dart';
import 'package:slyde_messenger/views/pages/navigation_pages/switch_account.dart';
import 'package:slyde_messenger/views/widgets/backdrop.dart';

import 'navigation_pages/new_channel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appViewModel = Provider.of<AppViewModel>(context);
    // final viewModel = Provider.of<HomePageViewModel>(context);
    // final CustomColors colors = CustomColors(darkMode: appViewModel.darkMode);
    return BackdropScaffold(
      // onBackLayerConcealed: viewModel.onBackLayerConcealed,
      // onBackLayerRevealed: viewModel.onBackLayerRevealed,
      inactiveOverlayOpacity: 0.3,
      // backgroundColor: colors.primaryColor,
      // backLayerBackgroundColor: colors.secondaryColor,
      // frontLayerBackgroundColor: colors.primaryColor,
      // floatingActionButton: AnimatedOpacity(
      //   duration: Duration(milliseconds: 300),
      //   curve: Curves.easeInOutSine,
      //   // opacity: viewModel.opacity,
      //   child: FloatingActionButton(
      //       child: Icon(EvaIcons.editOutline),
      //       // backgroundColor: colors.accentColor,
      //       mini: true,
      //       onPressed: () {}),
      // ),
      // subHeader: SubHeader(colors: colors),
      // appBar: BackdropAppBar(
      //   centerTitle: true,
      //   backgroundColor: colors.secondaryColor,
      //   leading: BackdropToggleButton(),
      //   title: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: <Widget>[
      //       CircleAvatar(radius: 14),
      //       SizedBox(
      //         width: 8,
      //       ),
      //       Text(
      //         'Farmerrrr',
      //         style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
      //       )
      //     ],
      //   ),
      // ),
      frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
      frontLayer: FrontLayer(),
      backLayer: BackLayer(),
    );
  }
}

class SubHeader extends StatelessWidget {
  // const SubHeader({
  //   Key key,
  //   @required this.colors,
  // }) : super(key: key);

  //final CustomColors colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '13 unread messages',
                  //style: TextStyle(color: colors.white, fontSize: 12)
                ),
              ),
              InkWell(
                child: Icon(
                  LineIcons.search,
                  size: 20,
                  // color: colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(
            height: 0,
            // color: colors.grey,
          ),
        ],
      ),
    );
  }
}

class BackLayer extends StatelessWidget {
  final List<Widget> navigationPages = [
    SwitchAccount(),
    NewChannel(),
    NewSecretChat()
  ];
  @override
  Widget build(BuildContext context) {
    // final appViewModel = Provider.of<AppViewModel>(context);
    // final colors = CustomColors(darkMode: appViewModel.darkMode);
    // final viewModel = Provider.of<HomePageViewModel>(context);

    return BackdropNavigationBackLayer(
        separator: Divider(
          height: 0,
          //color: colors.grey,
          indent: 72,
          endIndent: 16,
        ),
        onTap: (i) {
          //viewModel.changeNavigationLayerIndex(i);
          Navigator.push(context, SlidePageBuilder(page: navigationPages[i]));
          if (i != 8) {
            Backdrop.of(context).fling();
          }
        },
        items: [
          ListTile(
            //leading: Icon(LineIcons.users, color: colors.grey),
            title: Text(
              'Switch account',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(Icons.speaker_phone, color: colors.grey),
            title: Text(
              'New Channel',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(EvaIcons.lockOutline, color: colors.grey),
            title: Text(
              'New Secret Chat',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(EvaIcons.peopleOutline, color: colors.grey),
            title: Text(
              'New Group',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(EvaIcons.personOutline, color: colors.grey),
            title: Text(
              'Contacts',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(LineIcons.phone_square, color: colors.grey),
            title: Text(
              'Calls',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(LineIcons.bookmark_o, color: colors.grey),
            title: Text(
              'Saved Messages',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(EvaIcons.settingsOutline, color: colors.grey),
            title: Text(
              'Settings',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            //leading: Icon(EvaIcons.moonOutline, color: colors.grey),
            title: Text(
              'Dark Mode',
              //style: TextStyle(color: colors.white, fontSize: 14),
            ),
            // trailing: Switch.adaptive(
            //   //value: appViewModel.darkMode,
            //   onChanged: (isOn) {
            //     //appViewModel.changeDarkMode();
            //   },
            //   activeColor: colors.accentColor,
            //   activeTrackColor: colors.primaryColor,
            //   inactiveTrackColor: colors.primaryColor,
            // )
          )
        ]);
  }
}

class FrontLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final appViewModel = Provider.of<AppViewModel>(context);
    final colors = CustomColors(darkMode: true);
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.separated(
          itemBuilder: (_, i) => RecentsList(
                index: i,
                colors: colors,
              ),
          separatorBuilder: (_, i) => Divider(
                color: colors.grey,
                indent: 72,
                endIndent: 16,
                height: 0,
              ),
          itemCount: 5),
    );
  }
}

class RecentsList extends StatelessWidget {
  final CustomColors colors;
  final index;
  const RecentsList({Key key, this.index, this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 20),
      title: Text(
        'Tennesse thresher $index',
        style: TextStyle(color: colors.white, fontSize: 14),
      ),
      subtitle: Text(
        'heyyy',
        style: TextStyle(color: colors.subtitleText, fontSize: 12),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('2m',
              style: TextStyle(fontSize: 10, color: colors.subtitleText)),
          SizedBox(
            height: 8,
          ),
          Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('100',
                    style: TextStyle(fontSize: 8, color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
