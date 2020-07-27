###### Menu  Drawer
   * Syntax
   ```
   Scaffold(
      appBar: AppBar(title: Text("Popup"),),
      drawer: MainDrawer() # here  you have to defie  the  drawe view, # Drawer  is a widget where you will define the drawe view.
      body: MainView(),
      )
  ```  
 ## AlertView / Dialog view 
 - In flutter you can use alertview for iPhone using showCupertinoDialog widget and for Andriod you can use showDialog widget.
      * ShowCupertinoDialog Syntax
      * ShowCupertinoDialog contain mainly two property one is context and another is builder. The builder consist of CupertinoAlertDialog 
      where it has title (title of the alert) and Content (Message description) , and list of actions where you can define CupertinoDialogAction buttons.
      * CupertinoDialogAction has many property where you can define the  alert box cancel button ui.      
  ###### showCupertinoDialog Syntax 
   ```
     showCupertinoDialog(
      context: contex,      
      builder: (ctx) => CupertinoAlertDialog  
      (
      content: Text("This is iOS alert !"),
      title: Text("iOS Alert !"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("Cancel"),
          isDefaultAction: false,
          isDestructiveAction: false // make separate color of the alert
          onPressed: () {
            Navigator.pop(context); // for dismiss alertview
          },
        )
      ],
    ),);
  ``` 
  
  
  ###### showDialog Syntax
     Like wise showCupertinoDialog widget same for Android.That is showDialog.
      * showDialog has contain mainly two property one is context and another is builder. Where context you have pass the widget context and builder where you               define the AlertDialog widget. 
      * AlertDialog widget has title where you can defein the alert title and ccontext where you can define the dialog message and list of action where you can
         close and perform a Alert dialog .      
         
      ```
      showDialog(
      context: contex,
      builder: (ctx) => AlertDialog(content:Text("This is the alert view") ,title: Text("Alert"),
    actions: <Widget>[
      FlatButton(onPressed: (){
      }, child: Text("Ok")),
      FlatButton(onPressed: (){
      }, child: Text("Dismiss")),
    ],
    );
    ``` 
 ## Snack bar 
* Snackbar are basically used bottom of the view. Like showing message when user add or delete some thing.
   ###### Snack Syntax

    ``` 
     Scaffold.of(ctx).showSnackBar(
      SnackBar(
        content: Text("hello"), # Sanbar has the context where yiu can describe the message dec
        duration: Duration(seconds: 2), // duration how much time will the snackbar will display
        action: SnackBarAction(
          label: "Dismiss",
          onPressed: () {},
        ),
      );  
    ```

 ## CupertinoActionSheet
* Cupertion action  sheet is only for iPhone Ui.You can also for andriod. It is used for     menu option. 
* Cupertion action sheet contain property like Alert, message and action,cancelButton where user destory the action sheet popup.
* CupertinoActionSheetAction is the action buttion for alertsheet.
* it  has property call isDestructiveAction which is used for destruction of the popup.

  ###### CupertinoActionSheetAction Syntax
    ``` 
      CupertinoActionSheetAction(
          onPressed: () {
            print(" action 3 click");
          },
          child: Text("Action 3"),
          isDefaultAction: true,
          isDestructiveAction: true, // used specificaly when user want to retive all 
        ),
    ``` 
  ###### CupertinoActionSheet Syntax
    ```
     showCupertinoModalPopup(
      context: context,
     builder:(context) => CupertinoActionSheet(  # title of the action sheet
      title: Text(
        "Action Sheet",
        style: TextStyle(fontSize: 30),
      ),
      // message of the action sheet
      message: Text(
        "Select any section",
        style: TextStyle(fontSize: 15.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: () {
            print(" action 1 click");
          },
          child: Text("Action 1"),
          isDefaultAction: true,
        ),
        
      ],
     cancelButton: CupertinoActionSheetAction(
            onPressed: () {
            print(" action 1 click");
            Navigator.pop(ctx);

          },

        ),));
   ```
## showModalBottomSheet
   *  Show buttom modal sheet is need when you need show some small info view from bottom
      showModalBottomSheet has  ain  property is context and builder.
   *  Dismiss  bottomsheet  we use Navigator.(of).contex.dismiss
  ###### showModalBottomSheet Syntax
         ```
                 showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 300,
                          color: Colors.green,
                          child: Text("Hello world"),
                        ));
         ```


## PopupMenuButton  
  * To show multiple option when user click on more icon the  best option is PopupMenuButton
  * It is best way to show it in andriod.
  * It has PopupMenuItem where user can indentified value.
  ###### PopupMenuButton Syntax
   ```
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
                    value: FilterOption.FilterOptionAll), // value are dynamic if you pass int then on select method you will identified by Int. best option use enum .
              ],
            ),
          ),
     ```

## showCupertinoModalPopup
    * Show cupertino ModalPopup is used for showing popup for iPhone.
    * It is used as modal in iOS device
  ###### showCupertinoModalPopup Syntax
   ```
      #this is used as a modal view in ios 
      showCupertinoModalPopup(
                    context: context,
                    builder: (context) => Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.green,
                          child: Text("Hello world"),
                        ));
              },
              child: Text("showCupertinoModalPopup")
              ),      
   ```
## CupertinoContextMenu
   * For menu option in ios we are using cupertino ContextMenu.
   * CupertinoContextMenu has CupertinoContextMenuAction whser user can make selection. 
   * It has actions and child where child context is used to makethe view and the actions are used to perform  task. It is only used for iPhone
     ###### CupertinoContextMenu Syntax
     ```
        Container(
            height: 40,
            child: CupertinoContextMenu(
              child: Container(
                child: Text(
                    "Hello"),
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
     ```



  
