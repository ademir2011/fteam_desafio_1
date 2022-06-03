import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/widgets/appbar/appbar_widget.dart';

class AdoptionDetailPage extends StatefulWidget {
  const AdoptionDetailPage({Key? key}) : super(key: key);

  @override
  State<AdoptionDetailPage> createState() => _AdoptionDetailPageState();
}

class _AdoptionDetailPageState extends State<AdoptionDetailPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget(
        height: size.height * 0.1,
        width: size.width,
        leadingIcon: Icons.arrow_back_ios_rounded,
        onPressedLeading: () => Modular.to.pop(),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sparky',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Icon(
                        Icons.male,
                        size: 30,
                        color: Theme.of(context).iconTheme.color!.withOpacity(.5),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Golden Retriever',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        '8 months old',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '2.5 kms away',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: size.height * 0.45,
                    child: LayoutBuilder(
                      builder: (ctx, constraints) => Row(
                        children: [
                          SizedBox(
                            width: constraints.maxWidth * 0.2,
                            height: constraints.maxHeight,
                            child: Stack(
                              children: [
                                ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Align(
                                      child: Container(
                                        height: constraints.maxWidth * 0.2,
                                        width: constraints.maxWidth * 0.2,
                                        margin: const EdgeInsets.only(bottom: 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(
                                            width: 2.5,
                                            color: Theme.of(context).highlightColor,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.network(
                                            'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: constraints.maxHeight * 0.2,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white.withOpacity(0),
                                          Theme.of(context).colorScheme.secondary,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth * 0.05),
                          Container(
                            width: constraints.maxWidth * 0.75,
                            height: constraints.maxHeight,
                            child: Image.network(
                              'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'About',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Lorem ipsum lor em ips sun lorem' * 20,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: size.height * 0.15),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: size.width / 2,
              height: size.height * 0.10,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'ADOPT',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
