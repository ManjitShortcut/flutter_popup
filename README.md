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
      ###### showDialog Syntax
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

    
    
     
     
  
