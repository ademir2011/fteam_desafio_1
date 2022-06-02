import 'package:flutter/material.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({Key? key}) : super(key: key);

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Theme.of(context).iconTheme.color,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Location',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      'Coruscant, Galaxy',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: index == 0
                          ? const Icon(Icons.filter_list)
                          : Row(
                              children: const [
                                Icon(Icons.star),
                                SizedBox(width: 5),
                                Text('Jedi'),
                              ],
                            ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: constraints.maxHeight * 0.8,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: constraints.maxHeight * 0.2,
                      margin: const EdgeInsets.only(bottom: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).cardColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
                                fit: BoxFit.cover,
                                height: constraints.maxHeight * 0.2,
                                width: constraints.maxHeight * 0.2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Mestre Yoda',
                                        style: Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      const Icon(Icons.star_border),
                                    ],
                                  ),
                                  Text(
                                    'Classe Jedi',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Extraterrestre, +d800 anos',
                                    style: Theme.of(context).textTheme.bodySmall,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_sharp,
                                        size: 20,
                                        color: Theme.of(context).colorScheme.primary,
                                      ),
                                      const SizedBox(width: 2.5),
                                      Text(
                                        '10 mil anos luz',
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
