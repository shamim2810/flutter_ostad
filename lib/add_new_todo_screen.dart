import 'package:flutter/material.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEConroller = TextEditingController();
  final TextEditingController _descriptionTEConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Todo',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEConroller,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
                validator: (String? value) {
                  final v = value ?? '';
                  if (v.trim().isEmpty) {
                    return 'Enter your title';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _descriptionTEConroller,
                maxLines: 10,
                maxLength: 1000,
                decoration: const InputDecoration(hintText: 'Description'),
                validator: (String? value) {
                  final v = value ?? '';
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your Description';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                //width: double.infinity,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEConroller.dispose();
    _descriptionTEConroller.dispose();
    super.dispose();
  }
}
