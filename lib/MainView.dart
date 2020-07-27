import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './Alert.dart';
import './ActionSheet.dart';

enum FilterOption { FilterOptionFav, FilterOptionAll }

class MainView extends StatelessWidget {
  void showDrawer(BuildContext ctx) {
    print("drawer click");
    Scaffold.of(ctx).openDrawer();
  }

  void showSnackBar(BuildContext ctx) {
    // Scaffold.of(ctx).hideCurrentSnackBar();
    Scaffold.of(ctx).showSnackBar(
      SnackBar(
        content: Text("hello"),
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: "Dismiss",
          onPressed: () {},
        ),
      ),
    );
  }

  void showAlertBox(BuildContext contex) {
    CustomAlertDialog().showAlert(contex);
  }

  void actionBox(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => ActionSheet().showActionSheet(context));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FlatButton(
              onPressed: () => showDrawer(context), child: Text("Show drawer")),
          FlatButton(
              onPressed: () => showSnackBar(context),
              child: Text("Show SnackBar")),
          FlatButton(
              onPressed: () => showAlertBox(context),
              child: Text("Show Alert")),
          FlatButton(
              onPressed: () => actionBox(context),
              child: Text("Show Action Sheet")),
          FlatButton(onPressed: () {}, child: Text("Show Menu List")),
          Container(
            height: 40,
            child: CupertinoContextMenu(
              child: Container(
                child: Text(
                    "helloworldjcasdasjdasjdjalskdkdaskldlkasdlksadklasdkljas"),
              ),
              actions: <Widget>[
                CupertinoContextMenuAction(
                  child: const Text("Action 1"),
                  onPressed: () {},
                ),
                CupertinoContextMenuAction(
                  child: const Text("Action 2"),
                  onPressed: () {},
                ),
                CupertinoContextMenuAction(
                  child: const Text("Action 3"),
                  onPressed: () {},
                ),
              ],
              
            ),
          ),
          Container(
            child: PopupMenuButton(
              onSelected: (FilterOption selectedValue) {
                // setState(() {
                //   if (selectedValue == FilterOption.FilterOptionFav) {
                //   } else {
                //   }
                // });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text("Only favorites"),
                    value: FilterOption.FilterOptionFav),
                PopupMenuItem(
                    child: Text("Show All"),
                    value: FilterOption.FilterOptionAll),
              ],
            ),
          ),
          FlatButton(
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.green,
                          child: Text("Hello world"),
                        ));
              },
              child: Text("showCupertinoModalPopup")),
          FlatButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 300,
                          color: Colors.green,
                          child: Text("Hello world"),
                        ));
              },
              child: Text("showModalBottomSheet")),
        ],
      ),
    );
  }
}
