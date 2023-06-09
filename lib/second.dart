import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grow/third.dart';

import 'color.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _fathernameController = TextEditingController();
  TextEditingController _dorrController = TextEditingController();
  TextEditingController _areaController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();


  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  String? dropdownValue;
  int selectedGender = 0;
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
                  'SUBMIT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 40.h),
              Center(
                child: Text(
                  'Generate - Login ID & Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp,decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  '( Email ID may use as login ID and phone no as password )',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upload Profile pic',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                  ),
                  Text(
                    'Your ID no – DL 999999',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Text(
                'Name -',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(height: 10.h),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    )),
              ),

              SizedBox(height: 30.h),
              Text(
                'Surname –',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(height: 10.h),
              TextField(
                controller: _surnameController,
                decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    )),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gotra - ',
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
              SizedBox(height: 20.h),
              Text(
                'Gender -',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Father Name -',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              TextField(
                controller: _fathernameController,
                decoration: InputDecoration(
                    hintText: 'Father Name',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    )),
              ),
              SizedBox(height: 20.h),

              Text(
                'Email -',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: '@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    )),
              ),
              SizedBox(height: 40.h),
              Text(
                'Address :-',
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
                  Expanded(
                    child:              Text(
                      'Door no. -',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),

                  ),
                  Expanded(
                    child:                  TextField(
                      controller: _dorrController,
                      decoration: InputDecoration(
                      ),
                    ),

                  ),

                ],
              ),
              SizedBox(height: 10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:               Text(
                      'Area -',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),

                  ),
                  Expanded(
                    child:              TextField(
                      controller: _areaController,
                      decoration: InputDecoration(
                      ),
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
              SizedBox(height: 20.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Material Status -',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  RadioListTile(
                    title: Text('Married'),
                    value: 'Married',
                    groupValue: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Unmarried'),
                    value: 'Unmarried',
                    groupValue: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Bachelor'),
                    value: 'Bachelor',
                    groupValue: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Divorce'),
                    value: 'Divorce',
                    groupValue: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Separate'),
                    value: 'Separate',
                    groupValue: selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 20.0.h),
              Text(
                'About yourself -',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(height: 5.0.h),
              Text(
                '(in 50 words)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              TextField(
                controller: _aboutController,
                maxLines: 3,
                decoration: InputDecoration(
                ),
              ),

              SizedBox(height: 50.0.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
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
