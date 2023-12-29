import 'package:athletic_hub/app/feature/filters/domain/models/filter_bloc_model.dart';
import 'package:athletic_hub/app/feature/filters/domain/models/filter_model.dart';
import 'package:athletic_hub/app/util/themes/extensions/build_context_ext.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
    required this.filters,
  });

  final List<FilterBlocModel> filters;
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filters.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(197, 196, 208, 208)
                                  .withOpacity(0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Title(title: filters[index].title),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                  height: 100.h,
                                  child: DropDownField(
                                    filter: filters[index],
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
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
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 10),
      ),
    );
  }
}

class DropDownField extends StatelessWidget {
  const DropDownField({
    super.key,
    required this.filter,
  });
  final FilterBlocModel filter;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<FilterModel>(
      // padding: EdgeInsets.only(bottom: 70, left: 50),
      dropdownDecoratorProps:
          DropDownDecoratorProps(baseStyle: context.textStyles.bodyB),
      dropdownButtonProps: DropdownButtonProps(color: context.colors.white),
      popupProps: PopupProps.menu(
          menuProps: MenuProps(backgroundColor: context.colors.white)),
      //textStyle: context.textStyles.bodyM.copyWith(),
      items: filter.filters,
      onChanged: (val) {},

      itemAsString: (item) {
        return item.filter;
      },
    );
  }
}
