import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/auth/present/views/auth_view.dart';
import '../../../features/auth/forgot_password/present/views/forgot_pass_view.dart';
import '../../../features/auth/sign_in/otp_view.dart';
import '../../../features/auth/sign_in/present/views/phone_sign_in_view.dart';
import '../../../features/auth/sign_in/present/views/sign_in_view.dart';
import '../../../features/auth/sign_up/present/views/email_view.dart';
import '../../../features/auth/sign_up/present/views/sign_up_view.dart';
import '../../../features/auth/reset_password/present/views/reset_pass_view.dart';
import '../../../features/home/present/home.dart';
import '../../../features/info_pages/present/views/about_view.dart';
import '../../../features/info_pages/present/views/contact_view.dart';
import '../../../features/info_pages/present/views/privacy_view.dart';
import '../../../features/info_pages/present/views/terms_view.dart';
import '../../utils/extensions/theme_ext.dart';
import '../app_route.dart';
import '../middlewares/guards/app_guards.dart';

class RouteConfig {
  static List<RouteBase> get routes {
    return [
      GoRoute(
        path: '/${HomeView.routeName}',
        redirect: (context, state) {
          return '/';
        },
      ),
      appRoute(
        name: 'loading',
        path: '/loading',
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: context.colorScheme.primary,
              ),
            ),
          );
        },
      ),
      appRoute(
        name: AuthView.routeName,
        path: '/${AuthView.routeName}',
        builder: (context, state) {
          return const AuthView();
        },
      ),
      appRoute(
        name: SignInView.routeName,
        path: '/${SignInView.routeName}',
        builder: (context, state) {
          return const SignInView();
        },
      ),
      appRoute(
        name: PhoneSignInView.routeName,
        path: '/${PhoneSignInView.routeName}',
        builder: (context, state) {
          return const PhoneSignInView();
        },
      ),
      appRoute(
        name: OtpView.routeName,
        path: '/${OtpView.routeName}',
        builder: (context, state) {
          return const OtpView();
        },
      ),
      appRoute(
        name: ForgotPassView.routeName,
        path: '/${ForgotPassView.routeName}',
        builder: (context, state) {
          return const ForgotPassView();
        },
      ),
      appRoute(
        name: ResetPassView.routeName,
        path: '/${ResetPassView.routeName}',
        builder: (context, state) {
          return const ResetPassView();
        },
      ),
      appRoute(
        name: SignUpView.routeName,
        path: '/${SignUpView.routeName}',
        builder: (context, state) {
          return const SignUpView();
        },
      ),
      appRoute(
        name: VerifyEmailView.routeName,
        path: '/${VerifyEmailView.routeName}',
        guards: AppGuards.authenticated,
        builder: (context, state) {
          return const VerifyEmailView();
        },
      ),
      appRoute(
        name: HomeView.routeName,
        path: '/',
        builder: (context, state) {
          return HomeView();
        },
      ),
      appRoute(
        name: AboutView.routeName,
        path: '/${AboutView.routeName}',
        builder: (context, state) {
          return const AboutView();
        },
      ),
      appRoute(
        name: ContactView.routeName,
        path: '/${ContactView.routeName}',
        builder: (context, state) {
          return const ContactView();
        },
      ),
      appRoute(
        name: PrivacyView.routeName,
        path: '/${PrivacyView.routeName}',
        builder: (context, state) {
          return const PrivacyView();
        },
      ),
      appRoute(
        name: TermsView.routeName,
        path: '/${TermsView.routeName}',
        builder: (context, state) {
          return const TermsView();
        },
      ),

      // ShellRoute(
      //   builder: (context, state, child) {
      //     return DashView(child: child);
      //   },
      //   routes: [
      //     appRoute(
      //       name: OrdersView.routeName,
      //       path: '/${OrdersView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return const OrdersView();
      //       },
      //     ),
      //     appRoute(
      //       name: TemplatesView.routeName,
      //       path: '/${TemplatesView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return const TemplatesView();
      //       },
      //       routes: [
      //         appRoute(
      //           name: 'invoices/create',
      //           path: '/${TemplatesView.routeName}/invoices/create',
      //           guards: AppGuards.authenticated,
      //           builder: (_, _) {
      //             return const CreateInvoiceView();
      //           },
      //         ),
      //         appRoute(
      //           name: 'invoices/update',
      //           path: '/${TemplatesView.routeName}/invoices/update/:id',
      //           guards: AppGuards.authenticated,
      //           builder: (_, state) {
      //             return const UpdateInvoiceView();
      //           },
      //         ),
      //         appRoute(
      //           name: InvoicesHistoryView.routeName,
      //           path: '/${InvoicesHistoryView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (_, _) {
      //             return const InvoicesHistoryView();
      //           },
      //         ),
      //         appRoute(
      //           name: CreateInvoiceView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/payment_vouchers/${CreateInvoiceView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return ReceiptVoucherView();
      //           },
      //         ),
      //         appRoute(
      //           name: ReceiptVouchersHistoryView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/receipt_vouchers/${ReceiptVouchersHistoryView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return ReceiptVouchersHistoryView();
      //           },
      //         ),
      //         appRoute(
      //           name: PdfReceiptVoucherPdfView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/receipt_vouchers/${PdfReceiptVoucherPdfView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return PdfReceiptVoucherPdfView();
      //           },
      //         ),
      //         appRoute(
      //           name: CreatePaymentVoucherView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/payment_vouchers/${CreatePaymentVoucherView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return CreatePaymentVoucherView();
      //           },
      //         ),
      //         appRoute(
      //           name: PdfPaymentVoucherView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/payment_vouchers/${PdfPaymentVoucherView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return PdfPaymentVoucherView();
      //           },
      //         ),
      //         appRoute(
      //           name: PaymentVouchersHistoryView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/payment_vouchers/${PaymentVouchersHistoryView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return PaymentVouchersHistoryView();
      //           },
      //         ),
      //         appRoute(
      //           name: DedicationView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/dedication/${DedicationView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return DedicationView();
      //           },
      //         ),
      //         appRoute(
      //           name: DedicationPdfView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/dedication/${DedicationPdfView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return DedicationPdfView();
      //           },
      //         ),
      //         appRoute(
      //           name: PdfCongratulationView.routeName,
      //           path:
      //               '/${TemplatesView.routeName}/congratulation/${PdfCongratulationView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return PdfCongratulationView(
      //               congratulation: state.extra as CongratulationEntity,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     appRoute(
      //       name: UsersView.routeName,
      //       path: '/${UsersView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return const UsersView();
      //       },
      //       routes: [
      //         appRoute(
      //           name: UserProfileView.routeName,
      //           path:
      //               '/${UsersView.routeName}/${UserProfileView.routeName}/:id',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return UserProfileView(
      //               userId:
      //                   int.tryParse(state.pathParameters['id'] ?? '0') ?? 0,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     appRoute(
      //       name: RolesView.routeName,
      //       path: '/${RolesView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return const RolesView();
      //       },
      //     ),
      //     appRoute(
      //       name: SettingsView.routeName,
      //       path: '/${SettingsView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return SettingsView();
      //       },
      //       routes: [
      //         appRoute(
      //           name: MappingView.routeName,
      //           path: '/${MappingView.routeName}',
      //           guards: AppGuards.authenticated,
      //           builder: (context, state) {
      //             return MappingView();
      //           },
      //           routes: [
      //             appRoute(
      //               name: SallaUnifiedValues.routeName,
      //               path: '/${SallaUnifiedValues.routeName}',
      //               guards: AppGuards.authenticated,
      //               builder: (context, state) {
      //                 return SallaUnifiedValues();
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     appRoute(
      //       name: ProfileView.routeName,
      //       path: '/${ProfileView.routeName}',
      //       guards: AppGuards.authenticated,
      //       builder: (context, state) {
      //         return const ProfileView();
      //       },
      //     ),
      //   ],
      // ),
    ];
  }
}
