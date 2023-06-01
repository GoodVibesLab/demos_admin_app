import 'package:demos_app/repositories/poll_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({Key? key}) : super(key: key);

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Poll'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Question',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                FormBuilderTextField(
                    name: 'question',
                    style: const TextStyle(fontSize: 14),
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Enter your question',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: const OutlineInputBorder(),
                      counterText: '$_getQuestionLength/150',
                      counterStyle:
                          const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },

                    validator: FormBuilderValidators.required(),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(150),
                    ]),
                const SizedBox(height: 16),
                FilledButton(onPressed: () async{
                  PollRepository.createPoll(
                      question: 'Qui va gagner le premier tour des élections US ?',
                      isPrivate: false,
                      choices: ['Trump','Biden','DeSantis'],
                      endTime: DateTime.now().add(const Duration(days: 3)),
                    tags: ['USA','Elections']
                  );
                }, child: const Text('Test')),
                const Text(
                  'Choices',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                FormBuilderTextField(
                  name: 'choice1',
                  decoration: const InputDecoration(
                    hintText: 'Enter a choice',
                  ),
                  validator: FormBuilderValidators.required(),
                ),
                const SizedBox(height: 8),
                FormBuilderTextField(
                  name: 'choice2',
                  decoration: const InputDecoration(
                    hintText: 'Enter another choice',
                  ),
                  validator: FormBuilderValidators.required(),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    _submitForm();
                  },
                  child: const Text('Create Pool'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? get _question => _formKey.currentState?.fields['question']?.value;

  int get _getQuestionLength {
    final formData = _formKey.currentState?.fields['question']?.value;
    return formData.toString().length;
  }

  void _submitForm() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final formData = _formKey.currentState?.value;
      // Perform pool creation logic using the form data
      debugPrint(formData.toString());
    }
  }
}
