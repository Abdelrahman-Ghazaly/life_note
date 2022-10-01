import 'package:flutter/material.dart';
import 'package:life_note/common/constants/json.dart';
import 'package:life_note/global/constants/constants.dart';
import 'package:life_note/ui/ui.dart';
import 'package:life_note/utilities/utilities.dart';

import 'widgets/custom_radio_button.dart';
import 'widgets/custom_check_box.dart';
import 'widgets/custom_text_field.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

enum FileType { journal, note }

FileType? selectedType;
bool isLocked = false;

class _AddScreenState extends State<AddScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void updateFileType(FileType value) {
    setState(() {
      selectedType = value;
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Add a File'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                      title: 'Note',
                      value: FileType.note,
                      onChange: (value) {
                        updateFileType(value);
                      },
                    ),
                    CustomRadioButton(
                      title: 'Journal',
                      value: FileType.journal,
                      onChange: (value) {
                        updateFileType(value);
                      },
                    ),
                  ],
                ),
              ),
              kHeightSpacer,
              CustomTextField(
                labelText: 'Enter the File\'s Title',
                controller: titleController,
              ),
              kHeightSpacer,
              CustomCheckBox(
                title: 'Lock Your File',
                value: isLocked,
                onChange: (value) {
                  setState(() {
                    isLocked = value!;
                  });
                },
              ),
              kHeightSpacer,
              CustomTextField(
                labelText: 'Enter Your Password',
                controller: passwordController,
                isPassword: true,
              ),
              kHeightSpacer,
              CustomTextField(
                labelText: 'Confirm Your Password',
                controller: confirmPasswordController,
                isPassword: true,
              ),
              kHeightSpacer,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pick a Folder',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              kHeightSpacer,
              Column(
                children: List.generate(
                  folderList.length,
                  (index) {
                    return CustomCheckBox(
                      title: folderList[index]['title'],
                      value: folderList[index]['check'],
                      onChange: (value) {
                        setState(() {
                          folderList[index]['check'] = value!;
                        });
                      },
                    );
                  },
                ),
              ),
              kHeightSpacer,
              TextButton(
                onPressed: null,
                child: const Text('Create'),
              ),
              SizedBox(
                height: Utilities.screenHeight * 0.050,
              )
            ],
          ),
        ),
      ),
    );
  }
}
