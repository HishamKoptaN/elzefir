// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../../core/di/dependency_injection.dart';
// import '../../../../../../core/widgets/common/custom_circular_progress.dart';
// import '../../../../../../core/widgets/feedback/app_snackbar.dart';
// import '../../blocs/bloc/categories_bloc.dart';

// class SallaOptionCategories extends StatelessWidget {
//   const SallaOptionCategories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SallaOptionCategoriesBloc, SallaOptionCategoriesState>(
//       bloc: getIt<SallaOptionCategoriesBloc>(),
//       listener: (context, state) async {
//         await state.whenOrNull(
//           success: () {
//             context.showSuccessSnackBar(
//               title: 'نجاح',
//               message: 'تم تحديث الدور',
//             );
//           },
//           failure: (error) {
//             context.showSuccessSnackBar(
//               title: 'نجاح',
//               message: "فشل في تحديث الدور",
//             );
//           },
//         );
//       },
//       builder: (context, state) {
//         return state.maybeWhen(
//           loaded: (sallaOptionCategories, loading) {
//             return Row(
//               children: [
//                 SizedBox(
//                   width: 600.w,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: sallaOptionCategories?.length,
//                       itemBuilder: (context, index) {
//                         final item = sallaOptionCategories?[index];
//                         return SizedBox(
//                           width: 100.w,
//                           child: Card(
//                             color: Colors.white,
//                             margin: const EdgeInsets.symmetric(
//                               horizontal: 16,
//                               vertical: 6,
//                             ),
//                             elevation: 1,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: ListTile(
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 20,
//                                 vertical: 8,
//                               ),
//                               leading: CircleAvatar(
//                                 backgroundColor: Colors.deepPurple.shade50,
//                                 foregroundColor: Colors.deepPurple,
//                                 child: Text(
//                                   item?.id.toString() ?? '',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               title: Text(
//                                 item?.name ?? '',
//                                 style: const TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                               trailing: const Icon(
//                                 Icons.arrow_forward_ios,
//                                 size: 16,
//                                 color: Colors.grey,
//                               ),
//                               onTap: () {},
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//           initial: () {
//             getIt<SallaOptionCategoriesBloc>().add(
//               SallaOptionCategoriesEvent.get(),
//             );
//             return const Center(child: CircularProgressIndicator());
//           },
//           orElse: () {
//             return const Center(child: CircularProgressIndicator());
//           },
//         );
//       },
//     );
//   }
// }
