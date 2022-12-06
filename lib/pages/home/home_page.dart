import 'package:cardfacil_template/pages/home/widgets/card_widget.dart';
import 'package:cardfacil_template/pages/home/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'widgets/Button_grid_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ProfileWidget(),
              ),
            ),
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.all(16),
              child: CardWidget(),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade400,
                      ),
                      hintText: 'Pesquisar benefícios',
                      filled: true,
                      fillColor: AppTheme.grey50,
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppTheme.grey50,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: AppTheme.grey50,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 38)),
            SliverGrid.count(
              crossAxisCount: 4,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.6),
              children: const [
                ButtonGridWidget(
                  icon: 'assets/images/icons/team_dashboard.svg',
                  title: 'Meu plano',
                ),
                ButtonGridWidget(
                  icon: 'assets/images/icons/account_box.svg',
                  title: 'Meus dados',
                ),
                ButtonGridWidget(
                  icon: 'assets/images/icons/account_balance.svg',
                  title: 'Faturas',
                ),
                ButtonGridWidget(
                  icon: 'assets/images/icons/post_add.svg',
                  title: 'Dependentes',
                ),
                // ButtonGridWidget(icon: Icons.add, title: 'Parceiros'),
                // ButtonGridWidget(icon: Icons.add, title: 'Cupons'),
                // ButtonGridWidget(icon: Icons.add, title: 'Meus pontos'),
                // ButtonGridWidget(icon: Icons.add, title: 'Loja'),
                // ButtonGridWidget(icon: Icons.add, title: 'Voucher'),
                // ButtonGridWidget(icon: Icons.add, title: 'Duvidas'),
                // ButtonGridWidget(icon: Icons.add, title: 'Suporte'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
