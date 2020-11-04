import 'package:flutter/material.dart';
import 'package:young_activist/calendar.dart';
import 'package:young_activist/gallery.dart';
import 'package:young_activist/home.dart';
import 'package:young_activist/payment.dart';
import 'package:young_activist/profile.dart';
import 'package:young_activist/qr_scanner.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendar extends StatefulWidget {
  @override
  _calendarState createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar : PreferredSize(
            preferredSize : Size(double.infinity,60),
            child : AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () => {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home_page()),)},
                  icon: Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 40.0
                  ),
                ),
                title : Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child :Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(60.0,10.0, 10.0, 10.0),
                            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                            width: 170.0,
                            //color: Colors.blue,
                            child: Text(
                              "Calendar",
                              style: TextStyle(color: Colors.grey[600], fontSize: 30, letterSpacing: 1.0,),
                            ),
                          ),
                        ),),

                      Expanded(
                          flex: 1,
                          child : Container(
                              padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
                              //
                              // color: Colors.red,
                              child: FlatButton(
                                onPressed: () => {Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => profile()),)},
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images.jpg'),
                                  radius: 20.0,
                                ),
                              ))

                      )
                    ]

                )

            )
        ),

        body : SafeArea(
            child: SingleChildScrollView(
                child : Column(

                    children : <Widget>[
                      Container(
                        padding:EdgeInsets.fromLTRB(0.0,20,0,10),

                        child: SfCalendar(
                          viewHeaderHeight: 20,
                          headerHeight: 60,
                          view: CalendarView.month,
                          showNavigationArrow: true,

                        ),
                      ),

                      Container(
                        padding:EdgeInsets.fromLTRB(25.0,10,25,13),
                        color: Colors.white,

                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children : <Widget> [
                              FlatButton(
                                  onPressed: () => {Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => qr_scanner()),)
                                  },
                                  child: Column(
                                      children : <Widget>[
                                        Icon(
                                          Icons.qr_code_scanner,
                                          color: Colors.grey[600],
                                          size: 30.0,

                                        ),
                                        Text("QR Code",
                                            style :TextStyle(
                                                color: Colors.grey[600]))]

                                  )

                              ),
                              FlatButton(
                                  onPressed: () => {Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => calendar()),)},
                                  child: Column(
                                      children : <Widget>[
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          color: Colors.grey[600],
                                          size: 30.0,

                                        ),
                                        Text("Calendar",
                                            style :TextStyle(
                                                color: Colors.grey[600]
                                            ))]

                                  )

                              ),
                              FlatButton(
                                  onPressed: () => {Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => gallery()),)},
                                  child: Column(
                                      children : <Widget>[
                                        Icon(
                                          Icons.photo_album,
                                          color: Colors.grey[600],
                                          size: 30.0,

                                        ),
                                        Text("Gallery",
                                            style :TextStyle(
                                                color: Colors.grey[600]))
                                      ]

                                  )

                              ),
                              FlatButton(
                                  onPressed: () => {Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => payment()),)},
                                  child: Column(
                                      children : <Widget>[
                                        Icon(
                                          Icons.payment,
                                          color: Colors.grey[600],
                                          size: 30.0,

                                        ),
                                        Text("Payment",
                                            style :TextStyle(
                                                color: Colors.grey[600]))]

                                  )

                              ),
                            ]
                        ),
                      ),



                    ])

            )
        )
    );
  }
}
