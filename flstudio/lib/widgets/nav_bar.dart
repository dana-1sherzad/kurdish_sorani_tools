import 'package:flutter/material.dart';

class StudioNavBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  const StudioNavBar({super.key, this.currentIndex = 0});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 800;

    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Row(
        children: [
          // Logo
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
            child: Row(
              children: [
                Icon(
                  Icons.code,
                  color: Theme.of(context).colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Kurdish Sorani Tools',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(),
          if (isWide) ...[
            _navItem(context, 'Home', '/', 0),
            _navItem(context, 'Features', '/features', 1),
            _navItem(context, 'Demo', '/demo', 2),
            _navItem(context, 'Docs', '/docs', 3),
            const SizedBox(width: 16),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download, size: 18),
              label: const Text('pub.dev'),
            ),
          ] else
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _showMobileMenu(context),
            ),
        ],
      ),
    );
  }

  Widget _navItem(BuildContext context, String label, String route, int index) {
    final isActive = currentIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () => Navigator.pushReplacementNamed(context, route),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            color: isActive ? Theme.of(context).colorScheme.primary : null,
          ),
        ),
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            title: const Text('Features'),
            onTap: () => Navigator.pushReplacementNamed(context, '/features'),
          ),
          ListTile(
            title: const Text('Demo'),
            onTap: () => Navigator.pushReplacementNamed(context, '/demo'),
          ),
          ListTile(
            title: const Text('Docs'),
            onTap: () => Navigator.pushReplacementNamed(context, '/docs'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
