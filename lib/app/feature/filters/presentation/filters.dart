import 'package:athletic_hub/app/feature/filters/presentation/enums.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class Filters extends StatefulWidget {
  const Filters({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    super.initState();
  }

  void _apply() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 230, 232, 232)),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text('Фильтр')),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, i) {
                      return Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(197, 196, 208, 208)
                                  .withOpacity(0)),
                          child: Column(
                            children: [
                              const Title(),
                              DropDownField(cnt: _cnt, widget: widget),
                            ],
                          ));
                    }),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                    child: ElevatedButton(
                        onPressed: () {
                          _apply();
                        },
                        child: const Text(
                          'Применить',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        )))
              ],
            )),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Вид спорта',
        style: TextStyle(color: Colors.black, fontSize: 10),
      ),
    );
  }
}

class DropDownField extends StatelessWidget {
  const DropDownField({
    super.key,
    required SingleValueDropDownController cnt,
    required this.widget,
  }) : _cnt = cnt;

  final SingleValueDropDownController _cnt;
  final Filters widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: DropDownTextField(
        textStyle: const TextStyle(fontSize: 10),
        listPadding: ListPadding(top: 1),
        textFieldDecoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        controller: _cnt,
        clearOption: true,
        dropDownIconProperty: IconProperty(size: 12),
        keyboardType: TextInputType.number,
        autovalidateMode: AutovalidateMode.always,
        clearIconProperty:
            IconProperty(size: 8, color: const Color.fromARGB(241, 5, 5, 5)),
        dropDownList: Filtres.values.map<DropDownValueModel>((filtre) {
          return DropDownValueModel(
            value: filtre.toString(),
            name: filtre.toString().split('.').last,
          );
        }).toList(),
        onChanged: (val) {},
      ),
    );
  }
}
