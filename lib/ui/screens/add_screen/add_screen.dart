import 'package:flutter/material.dart';
import 'package:life_note/common/constants/json.dart';
import 'package:life_note/global/constants/constants.dart';
import 'package:life_note/ui/ui.dart';
import 'package:life_note/utilities/utilities.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

enum FileType { journal, note }

FileType? selectedType;
bool isLocked = false;

class _AddScreenState extends State<AddScreen> {
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
                    buildCustomRadioButton(
                      title: 'Note',
                      value: FileType.note,
                    ),
                    buildCustomRadioButton(
                      title: 'Journal',
                      value: FileType.journal,
                    ),
                  ],
                ),
              ),
              kHeightSpacer,
              Container(
                height: Utilities.screenHeight * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: const InputDecoration(
                    labelText: 'Enter Title',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              kHeightSpacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Lock Your File'),
                  Checkbox(
                    value: isLocked,
                    onChanged: (value) {
                      setState(() {
                        isLocked = value!;
                      });
                    },
                  )
                ],
              ),
              kHeightSpacer,
              Container(
                height: Utilities.screenHeight * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: const InputDecoration(
                    labelText: 'Enter Your Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              kHeightSpacer,
              Container(
                height: Utilities.screenHeight * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Your Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
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
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Utilities.screenWidth * 0.7,
                          child: Text(
                            folderList[index]['title'],
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Checkbox(
                          value: folderList[index]['check'],
                          onChanged: (value) {
                            setState(() {
                              folderList[index]['check'] = value!;
                            });
                          },
                        )
                      ],
                    );
                  },
                ),
              ),
              kHeightSpacer,
              TextButton(
                onPressed: () {},
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

  Row buildCustomRadioButton({
    required String title,
    required FileType value,
  }) {
    return Row(
      children: [
        Text(title),
        Radio(
          value: value,
          groupValue: selectedType,
          onChanged: (value) {
            setState(() {
              selectedType = value!;
            });
          },
        ),
      ],
    );
  }
}
