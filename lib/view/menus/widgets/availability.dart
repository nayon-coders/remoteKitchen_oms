import 'package:flutter/material.dart';
import 'package:oms/view/menus/widgets/modifiers.dart';

import '../../../utility/appcolor.dart';

class AvailabilityMenus extends StatefulWidget {
  const AvailabilityMenus({super.key});

  @override
  State<AvailabilityMenus> createState() => _AvailabilityMenusState();
}

class _AvailabilityMenusState extends State<AvailabilityMenus> {
  bool _ischeck = false;

  List _items = ["All", "Available", "Unavailable"];
  List _selectedItems = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedItems.add(_items[0]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.05,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _items.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedItems.clear();
                          _selectedItems.add(_items[index]);
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        padding:
                            EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                          color: _selectedItems.contains(_items[index])
                              ? Colors.grey
                              : Colors.white,
                        ),
                        child: Text(
                          "${_items[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search item or modifier",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColors.selectgrey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 13, right: 13, top: 10, bottom: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.selectgrey,
                          ),
                          child: Text(
                            "Items",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Modifiers()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 13, right: 13, top: 10, bottom: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Modifiers",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * .30,
                            child: Text("Category Name 1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textblack,
                                ))),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text("Example Item Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text("BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22 - CA\$25.45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                          child: Text("Category Name 2",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textblack,
                              )),
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22 - CA\$25.45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22 - CA\$25.45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22 - CA\$25.45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .30,
                        ),
                        Checkbox(
                            value: _ischeck,
                            onChanged: (value) {
                              setState(() {
                                _ischeck = value!;
                              });
                            }),
                        Text(
                            "Example Item Name Fresh lamb kebab\n(10 skewers)- BOGO Item",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textblack,
                            )),
                      ],
                    ),
                    Text("CA\$35.22 - CA\$25.45",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textblack,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 25,right: 25),
          height: MediaQuery.of(context).size.height*0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("2 Selected",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.textblack,
                  ),
                ),

              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.13,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey,),
                      ),
                      child: Text("Select All",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          color:AppColors.textblack,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.13,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey,),
                      ),
                      child: Text("Unselect",
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          color:AppColors.textblack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width*0.20,
                  //margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.textindigo,
                  ),
                  child: Text("Change Availability",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16,color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}