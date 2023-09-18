import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/presentation/widgets/app_scaffold.dart';
import '../../../app/presentation/widgets/loading_indicator.dart';
import '../bloc/product_bloc.dart';
import '../widget/toggel_switch.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    context.read<ProductBloc>().add(GetProductEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.productState.when(
            init: () => const SizedBox.shrink(),
            loading: () => const Center(child: LoadingIndicator()),
            loaded: (data) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
                child: ListView.separated(
                    itemBuilder: (context, index) =>Container(
                      height: 100,
                      width: double.infinity,
                      child: Text(data[0].title),
                    ) ,
                    separatorBuilder: (context, index) =>RSizedBox(height: 20) ,
                    itemCount: 3
                ),
              ),
            ),
            empty: () => SizedBox.shrink(),
            error: (exception) => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
