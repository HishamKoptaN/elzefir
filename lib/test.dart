import 'package:flutter/material.dart';
import 'features/home/present/widgets/home_app_bar/home_app_bar.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFF8F5),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFF8F5).withValues(alpha: 0.8),
          elevation: 0.5,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu, color: Color(0xFF001629)),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle, color: Color(0xFF001629)),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeroSection(context),
              _buildSpecialtyHighlights(),
              _buildMenuSection(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDtwXhsHj_StUKDsnWr8MaaGRHvyJY5m9bB4ZinkD7P1YDbDSZuv-G7LeU8bOQILCFdtfW9hRgSeKwStsgA4fgmwnzouZvetH3N9qeRijDbl8NmSFApwZoBC3l0Ev4Mxly_XEIr-jJYivegBXu7WV770-qvgC-sqIs4xyXNfXdFVc0JdzKG-nuLhzVQ8z6UKUUfWMZv_Y7TA9b1SgUf_KIyU86KVwoj_yCvRAaL8urlQVxMpieVjpRCHiKIr_fk3pFN5J4-IMehsiw_',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF001629).withValues(alpha: 0.2),
              const Color(0xFF001629).withValues(alpha: 0.9),
            ],
          ),
        ),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Text(
              'أرقى المأكولات البحرية التقليدية برؤية عصرية',
              style: TextStyle(
                fontFamily: 'Libre Caslon Text',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'استمتع بتجربة طعام استثنائية تجمع بين عراقة التراث البحري وفنون الطهي الحديثة في قلب المدينة.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF001629),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.restaurant, size: 18),
                  label: const Text('حجز طاولة'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('استكشف القائمة'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // قسم التخصصات المختارة (Bento Grid)
  Widget _buildSpecialtyHighlights() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          const Text(
            'تخصصاتنا المختارة',
            style: TextStyle(
              fontFamily: 'Libre Caslon Text',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF001629),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'نقدم لكم الأفضل من كنوز البحر يومياً',
            style: TextStyle(color: Color(0xFF73777e)),
          ),
          const SizedBox(height: 24),
          // العنصر الرئيسي الأول
          _buildBentoCard(
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuCooR9WSWULFLW_CT8_inNVtwrP0E3zpbZB9dII4nQRfWdBGJ4hVgMvn0VtzeOJalfQeHlQxA87uj42fQjUf1rW5KlwBMSE6WNlHlBsAh8hemSv3ddQ2Q85f1rzKCIcfrydNga9CsM_6IjtKSvyZAEUV3jy9OpOQYu6bPaMT_YAMgPvn5IhwThc2Or_VT7A5F60NrtKspWYDf8jm5Yy4gg-BwYWKN62XlDftWbKgL0yZq6oTzUWADMFnov_l-TNtvZl174EeEBIaqK4',
            title: 'السمك المشوي على الحطب',
            subtitle: 'متبل بخلطة الزفر السرية والأعشاب البرية',
            height: 280,
          ),
          const SizedBox(height: 16),
          // عنصر فرعي 1
          _buildBentoCard(
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAbWiMYYiI3WLk2LA755j3TnLhQYYyZ9eexoCXQeEZu-c-Z5V3fzz9CyMwHDQJKbzVjkRdzQjrXGUydw4YTMcn1p7AetQ0WrQVS-FG052k_bNILGw9jlY_kv6141j_TgfYc32DHYUY2B_Rt-23LnrC1zSojGiv2NutXMkDaXUH8omhP-lAaPfp4M1Nx8sUCPUd9QSse90m9Sw3V9JYlCN6e25mcmm0i37Jjez1QURSqG9gdE5v0vzyVCapqYMY3fEe0i6LcSJy8zRew',
            title: 'محار البحر الطازج',
            height: 200,
          ),
          const SizedBox(height: 16),
          // عنصر فرعي 2
          _buildBentoCard(
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDoRNeFI1t2o3W_RuJC0PzesnsaZs15p4cuLmHcOkGJZemA-_ijWrQ2425KTTaVWeI6gn9I2shJXkAqEOyB8OjU3flT_FK1s8xhP2D2NSoDcFHdid5npcZC0CZu3j0GWznnO-25eSq8ODm0cGaYaz7554GNLO6DKi-biafmYCE1UUPt_A178FXJfL6KUOBSe9oxdvr-s7_g_xIRbK1LCkiHM71k_rSi5wEkPAVO9SGrQo-h8Om-SNmp17A50642NN1f__m5HxaLnv2y',
            title: 'المقبلات الشرقية',
            height: 200,
          ),
        ],
      ),
    );
  }

  Widget _buildBentoCard({
    required String imageUrl,
    required String title,
    String? subtitle,
    required double height,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          ),
        ),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Libre Caslon Text',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection() {
    return Container(
      color: const Color(0xFFfff1ea), // surface-container-low
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'قائمة المأكولات',
            style: TextStyle(
              fontFamily: 'Libre Caslon Text',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF001629),
            ),
          ),
          const SizedBox(height: 24),
          _buildMenuItem(
            'شوربة الزفر البحرية',
            '٤٥ ر.س',
            'مزيج من الروبيان، الحبار، وقطع السمك مع الكريمة الطازجة',
          ),
          _buildMenuItem(
            'روبيان جامبو مشوي',
            '١٢٠ ر.س',
            'ست حبات من الروبيان الكبير المشوي بصلصة الليمون والثوم',
          ),
          _buildMenuItem(
            'طبق الصيادية الملكي',
            '٨٥ ر.س',
            'أرز مطهو على الطريقة التقليدية مع قطع الكنعد المقلي والبصل المكرمل',
          ),
          _buildMenuItem(
            'حبار مقلي مقرمش',
            '٥٥ ر.س',
            'حلقات الحبار الطازجة المغطاة بطبقة مقرمشة مع صلصة الترتار',
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, String price, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Libre Caslon Text',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28180d),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF001629),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Color(0xFF73777e)),
          ),
          const Divider(height: 24),
        ],
      ),
    );
  }

  // شريط التنقل السفلي للهواتف
  Widget _buildBottomNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFfff8f5).withOpacity(0.9),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.restaurant_menu, 'Menu', true),
            _buildNavItem(Icons.shopping_bag_outlined, 'Cart', false),
            _buildNavItem(Icons.receipt_long_outlined, 'Orders', false),
            _buildNavItem(Icons.person_outline, 'Profile', false),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected) {
    return Container(
      padding: isSelected
          ? const EdgeInsets.symmetric(horizontal: 16, vertical: 6)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF002b49) : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : const Color(0xFF73777e),
          ),
          if (isSelected) ...[
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
