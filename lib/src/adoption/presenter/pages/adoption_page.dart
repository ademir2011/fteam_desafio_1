import 'package:flutter/material.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/widgets/appbar/appbar_widget.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/widgets/cards/card_adoption_widget.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/widgets/cards/card_category_widget.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({Key? key}) : super(key: key);

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class CategorySelect extends ValueNotifier<int> {
  CategorySelect(super.value);
}

class _AdoptionPageState extends State<AdoptionPage> {
  final categorySelect = CategorySelect(-1);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBarWidget(
        height: size.height * 0.1,
        width: size.width,
        leadingIcon: Icons.menu,
        urlImage:
            'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
        title: 'Location',
        subtitle: 'Coruscant, Galaxy',
      ),
      body: Container(
        width: size.width,
        height: size.height * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).highlightColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: LayoutBuilder(
          builder: (ctx, constraints) => Column(
            children: [
              Container(
                height: constraints.maxHeight * 0.1,
                margin: EdgeInsets.only(
                  left: 25,
                  top: constraints.maxHeight * 0.05,
                  bottom: constraints.maxHeight * 0.05,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: (constraints.maxWidth * 0.225) - 25,
                      child: CardCategoryWidget(
                        icon: Icons.filter_list,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.775,
                      child: ValueListenableBuilder(
                        valueListenable: categorySelect,
                        builder: (ctx, value, wdg) => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (ctx, index) {
                            return CardCategoryWidget(
                              icon: Icons.star,
                              title: 'Jedi',
                              onTap: () => categorySelect.value = index,
                              isSelected: categorySelect.value == index,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: constraints.maxHeight * 0.8,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return CardAdoptionWidget(
                      onTap: () {},
                      height: constraints.maxHeight,
                      urlImage:
                          'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
                      title: 'Mestre Yoda',
                      subtitle: 'Classe Jedi',
                      description: 'Extraterrestre, +d800 anos',
                      location: '10 mil anos luz',
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
