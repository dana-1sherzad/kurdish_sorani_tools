import 'package:flutter/material.dart';
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';
import '../main.dart';
import '../models/info_modal.dart';

class KurdishValidatorsPage extends StatefulWidget {
  const KurdishValidatorsPage({super.key});
  @override
  State<KurdishValidatorsPage> createState() => _KurdishValidatorsPageState();
}

class _KurdishValidatorsPageState extends State<KurdishValidatorsPage> {
  final _formKey = GlobalKey<FormState>();

  static const _code = '''
import 'package:kurdish_sorani_tools/kurdish_sorani_tools.dart';

Form(
  child: Column(children: [
    TextFormField(validator: KurdishValidators.required("پڕ بکەرەوە")),
    TextFormField(validator: KurdishValidators.minLength(3)),
    TextFormField(validator: KurdishValidators.email()),
    TextFormField(validator: KurdishValidators.phone()),
    TextFormField(validator: KurdishValidators.numeric()),
    TextFormField(validator: KurdishValidators.kurdishOnly()),
    TextFormField(validator: KurdishValidators.match(password)),
  ]),
)
''';

  String _t(String ckb, String en, String ar) {
    switch (langManager.currentLanguage) {
      case 'en':
        return en;
      case 'ar':
        return ar;
      default:
        return ckb;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_t('پشکنینی فۆرم', 'Form Validators', 'مدقق النماذج')),
        actions: [infoButton(context, title: 'KurdishValidators', code: _code)],
      ),
      body: Directionality(
        textDirection: langManager.textDirection,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(children: [
              _field(
                _t('پێویستە', 'Required', 'مطلوب'),
                KurdishValidators.required(_t('ئەم خانەیە پڕ بکەرەوە',
                    'This field is required', 'هذا الحقل مطلوب')),
              ),
              _field(
                _t('کەمترین ٣ پیت', 'Min 3 chars', 'الحد الأدنى 3 أحرف'),
                KurdishValidators.minLength(
                    3,
                    _t('بەلایەنی کەمەوە ٣ پیت', 'At least 3 characters',
                        'على الأقل 3 أحرف')),
              ),
              _field(
                _t('ئیمەیل', 'Email', 'البريد الإلكتروني'),
                KurdishValidators.email(_t('ئیمەیلەکە هەڵەیە', 'Invalid email',
                    'البريد الإلكتروني غير صالح')),
                keyboard: TextInputType.emailAddress,
              ),
              _field(
                _t('مۆبایل', 'Phone', 'الهاتف'),
                KurdishValidators.phone(_t('ژمارەی مۆبایل هەڵەیە',
                    'Invalid phone', 'رقم الهاتف غير صالح')),
                keyboard: TextInputType.phone,
              ),
              _field(
                _t('ژمارە', 'Numeric', 'رقمي'),
                KurdishValidators.numeric(
                    _t('تەنها ژمارە بنووسە', 'Numbers only', 'أرقام فقط')),
                keyboard: TextInputType.number,
              ),
              _field(
                _t('تەنها کوردی', 'Kurdish only', 'كردي فقط'),
                KurdishValidators.kurdishOnly(
                    _t('تەنها کوردی بنووسە', 'Kurdish only', 'كردي فقط')),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => _formKey.currentState?.validate(),
                icon: const Icon(Icons.check),
                label: Text(_t('پشکنین', 'Validate', 'تحقق')),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _field(String label, String? Function(String?) validator,
      {TextInputType? keyboard}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: validator,
        keyboardType: keyboard,
        decoration: InputDecoration(
            labelText: label, border: const OutlineInputBorder()),
      ),
    );
  }
}
