import 'package:flutter/material.dart';
import 'package:responsive/featuers/responsive_dashboard/model/all_expensess_item_model.dart';
import 'package:responsive/featuers/responsive_dashboard/widgets/all_expenses_item_header.dart';

import '../../../core/utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
          image: allExpensesItemModel.image,
        ),
        SizedBox(
          height: 34,
        ),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        SizedBox(
          height: 8,
        ),
      FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child:Text(
          allExpensesItemModel.date,
          style: AppStyles.styleRegular14(context),
        )),
        SizedBox(
          height: 16,
        ),
        FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child:Text(
          allExpensesItemModel.price,
          style: AppStyles.styleSemiBold24(context),
        )),
      ]),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff4EB7F2), width: 1),

          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
          image: allExpensesItemModel.image,
          imageBackground: Colors.white.withOpacity(0.10000000149011612),
          imageColor: Colors.white ,
        ),
        SizedBox(
          height: 34,
        ),
      FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child:Text(
          allExpensesItemModel.title,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
        )),
        SizedBox(
          height: 8,
        ),
        FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child:Text(
          allExpensesItemModel.date,
          style: AppStyles.styleRegular14(context).copyWith(color: Color(0xffFAFAFA)),
        )),
        SizedBox(
          height: 16,
        ),
      FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child:Text(
          allExpensesItemModel.price,
          style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
        )),
      ]),
    );
  }
}
