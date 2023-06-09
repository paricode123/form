import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grow/second.dart';

import 'color.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  String? dropdownValue; // Selected age value

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
                  'BRAHMAN ONLINE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 50.h),
              Center(
                child: Text(
                  'Registration',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ),
              SizedBox(height: 50.h),
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
                'Phone no. –',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(height: 10.h),
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    )),
              ),
              SizedBox(height: 50.0.h),
              Text(
                'OTP verification -',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  4,
                      (index) => Container(
                    width: 40.0.w,
                    height: 50.0.h,
                    margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    child: TextField(
                      controller: _controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) => _handleTextChanged(index, value),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Age - ',
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
              Text(
                '(Note – minimum age is 18 for registration)',
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(height: 50.0.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
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
                        'Verify',
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
