import 'package:flutter/material.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({Key? key}) : super(key: key);

  @override
  State<LanguageList> createState() => _LanguageListState();
}
enum LanguageEnums {
  Bahasa,
  Deutsch,
  English,
  Espanol,
  Francais,
  Italiano,
  Portugues,
  pycckuu,
  svenska,
  Turkce,
  chinnese,
  arabic,
  hindi,
}

class _LanguageListState extends State<LanguageList> {
  LanguageEnums? _languageEnums;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                  'Languages',
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

              ),
              GestureDetector(
                onTap:() => Navigator.pop(context),
                child: Container(
                  width: 30,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey
                  ),
                  child: const Icon(
                    Icons.close,
                  ),
                ),
              )

            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              const Text('Bahasa'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Bahasa,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
        ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              const Text('Deutsch'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Deutsch,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('English'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.English,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Español'),
              RadioListTile<LanguageEnums>(value: LanguageEnums.Espanol, groupValue: _languageEnums, onChanged: (val){
                _languageEnums=val;
              }),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Français'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Francais,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Italiano'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Italiano,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Português'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Portugues,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('pycckuu'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.pycckuu,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('svenska'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.svenska,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Türkçe'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.Turkce,
                  groupValue: _languageEnums,
                  onChanged: null),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('中華民國'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.chinnese,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('العربية'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.arabic,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:  [
              const Text('अंग्रेज़ी'),
              RadioListTile<LanguageEnums>(
                  value: LanguageEnums.hindi,
                  groupValue: _languageEnums,
                  onChanged: (val){
                    _languageEnums=val;
                  }
              ),
            ],
          ),

        ],
      ),
    );
  }
}
