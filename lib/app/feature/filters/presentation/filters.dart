import 'package:athletic_hub/app/feature/filters/presentation/enums.dart';
import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
    required this.title,
  });

  final String title;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 230, 232, 232),
            ),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text('Фильтр')),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(197, 196, 208, 208)
                              .withOpacity(0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Title(),
                          SizedBox(height: 100.h, child: DropDownField()),
                        ],
                      ),
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Применить',
                    style: context.textStyles.bodyM,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
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
  
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<Enum>(
      // padding: EdgeInsets.only(bottom: 70, left: 50),
      dropdownDecoratorProps: DropDownDecoratorProps(
          baseStyle: context.textStyles.bodyB),
        dropdownButtonProps: DropdownButtonProps(color: Colors.grey),
        popupProps: PopupProps.menu(menuProps: MenuProps(backgroundColor: Colors.grey)),
      //textStyle: context.textStyles.bodyM.copyWith(),
      items: Filters.values.map<Enum>((filter) {
        return filter;
      }).toList(),
      onChanged: (val) {},
      
      itemAsString: (item) {
        return item.toString().split('.').last;
      },
    );
  }
}
