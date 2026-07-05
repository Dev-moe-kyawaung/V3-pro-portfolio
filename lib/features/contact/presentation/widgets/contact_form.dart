// Contact form widget
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_links.dart';
import '../../../../../core/services/launch_service.dart';
import '../../../../../core/widgets/glow_card.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _message = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _message.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    await LaunchService.openEmail(
      email: AppLinks.email.replaceFirst('mailto:', ''),
      subject: 'Portfolio Contact - ${_name.text}',
      body: 'Name: ${_name.text}
Email: ${_email.text}

${_message.text}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlowCard(
      child: Column(
        children: [
          TextField(
            controller: _name,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _email,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _message,
            maxLines: 5,
            decoration: const InputDecoration(labelText: 'Message'),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _send,
              icon: const Icon(Icons.send_rounded),
              label: const Text('Send Message'),
            ),
          ),
        ],
      ),
    );
  }
}
