import 'package:flutter/material.dart';
import 'package:flutter_skin_language/l10n/localization_intl.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GmLocalizations.of(context).home),
      ),
      body: _buildBody(), // 构建主页面
      drawer: MyDrawer(), //抽屉菜单
    );
  }

  Widget _buildBody() {
    //用户未登录，显示登录按钮
    return Center(
      child: RaisedButton(
        child: Text(GmLocalizations.of(context).login),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context), //构建抽屉菜单头部
            Expanded(child: _buildMenus(context)), //构建功能菜单
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.only(top: 40, bottom: 20),
        child: Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  GmLocalizations.of(context).login,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            Text(
              GmLocalizations.of(context).login,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  // 构建菜单项
  Widget _buildMenus(BuildContext context) {
    var gm = GmLocalizations.of(context);
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.color_lens),
          title: Text(gm.theme),
          onTap: () => Navigator.pushNamed(context, "themes"),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text(gm.language),
          onTap: () => Navigator.pushNamed(context, "language"),
        ),
      ],
    );
  }

}
