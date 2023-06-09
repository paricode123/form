import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController _studentController = TextEditingController();
  TextEditingController _pvtController = TextEditingController();
  TextEditingController _govtController = TextEditingController();
  TextEditingController _shopController = TextEditingController();
  TextEditingController _businessController = TextEditingController();
  TextEditingController _freeController = TextEditingController();
  TextEditingController _docController = TextEditingController();
  TextEditingController _engController = TextEditingController();
  TextEditingController _lawController = TextEditingController();
  TextEditingController _otherController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();

  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  String? dropdownValue;
  String? selectedStatus;


  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _handleTextChanged(int index, String value) {
    if (value.isNotEmpty && index < _controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }

  int selectedRadio = 0;
  int selectedOption = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget buildRadio(int value, String label) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: selectedRadio,
          onChanged: (val) {
            setSelectedRadio(val!);
          },
        ),
        Text(label,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.0.h),
              Center(
                child: Text(
                  'Professional information - ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 30.h),
              buildRadio(1, 'Student -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Course -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _studentController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(2, 'Pvt. Job -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Organization -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _pvtController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(3, 'Govt. Job -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Organization -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _govtController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(4, 'Shop -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Name -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _shopController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(5, 'Business -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Name -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _businessController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(6, 'Freelancers -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        ' Profession -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _freeController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(7, 'Doctors -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Specialization -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _docController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(8, 'Engineers -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Specialization -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _engController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(9, 'Lawyers -'),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child:               Text(
                        'Specialization -',
                        style: TextStyle(fontSize: 15.sp),
                      ),

                    ),
                    Expanded(
                      child:              TextField(
                        controller: _lawController,
                        decoration: InputDecoration(
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h),
              buildRadio(10, 'Retired'),
              SizedBox(height: 20.h),
              buildRadio(11, 'Teacher'),
              SizedBox(height: 20.h),
              buildRadio(12, 'House Wife'),
              SizedBox(height: 20.h),
              buildRadio(13, 'Farmer'),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:buildRadio(14, 'Other -'),

        ),
                  Expanded(
                    child:              TextField(
                      controller: _otherController,
                      decoration: InputDecoration(
                      ),
                    ),

                  ),

                ],
              ),
              SizedBox(height: 40.h),

              Text(
                'Location :-',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp,decoration: TextDecoration.underline),
              ),
              SizedBox(height: 10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Country - ',
                    style: TextStyle(fontSize: 16.sp,fontWeight:  FontWeight.bold),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: ['India', 'Bhutan','USA','London',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'City - ',
                    style: TextStyle(fontSize: 16.sp,fontWeight:  FontWeight.bold),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: ['1', '2','3','4',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'District - ',
                    style: TextStyle(fontSize: 16.sp,fontWeight:  FontWeight.bold),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: ['1', '2','3','4',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'State - ',
                    style: TextStyle(fontSize: 16.sp,fontWeight:  FontWeight.bold),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: ['18', '19','20','21','22','23','24','25','+25',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Pin Code -',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _pincodeController,
                      decoration: InputDecoration(
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30.h),

              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text('Hide for public',style: TextStyle(color: Colors.red,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                ],
              ),


              SizedBox(height: 50.0.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ThirdPage()),
                    // );
                  },
                  child: Container(
                    width: 327.0.w,
                    height: 56.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0.r),
                      color: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
