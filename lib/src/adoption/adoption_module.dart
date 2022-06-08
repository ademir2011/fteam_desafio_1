import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_desafio_1/src/adoption/domain/entities/adoption_entity.dart';
import 'package:fteam_desafio_1/src/adoption/domain/entities/category_entity.dart';
import 'package:fteam_desafio_1/src/adoption/domain/entities/person_entity.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/adoption_detail_page.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/adoption_page.dart';

class AdoptionModule extends Module {
  final categories = [
    const CategoryEntity(id: '1', name: 'Grâo-Mestre Jedi', urlImageIcon: ''),
    const CategoryEntity(id: '2', name: 'Mestre Jedi', urlImageIcon: ''),
    const CategoryEntity(id: '3', name: 'Cavaleiro Jedi', urlImageIcon: ''),
    const CategoryEntity(id: '4', name: 'Padawan', urlImageIcon: ''),
    const CategoryEntity(id: '5', name: 'Youngling', urlImageIcon: ''),
  ];

  final person = const PersonEntity(
    urlImage: 'https://img.elo7.com.br/product/original/2CD8E1D/darth-vader-lapisepapel.jpg',
    location: 'Mustafar, Galaxy',
  );

  final adoptions = [
    const AdoptionEntity(
      id: '1',
      categoryId: '1',
      title: 'Yoda',
      subtitle: 'Grão Mestre',
      description: 'Extraterrestre, +d800 anos',
      distance: '10 mil anos luz',
      isFavorite: false,
      urlImages: [
        'https://lumiere-a.akamaihd.net/v1/images/626fd61e9b37110001dafe6c-image_65f027b6.jpeg?region=0,0,1536,864',
        'https://static.wikia.nocookie.net/starwars/images/d/d6/Yoda_SWSB.png/revision/latest?cb=20150206140125',
        'https://media.wired.com/photos/595485615578bd7594c46409/4:3/w_929,h_697,c_limit/Yoda-featured1.jpg',
        'https://cdn.quotesgram.com/img/76/11/2100945396-yoda.jpg',
      ],
      about:
          'Yoda was a legendary Jedi Master and stronger than most in his connection with the Force. Small in size but wise and powerful, he trained Jedi for over 800 years, playing integral roles in the Clone Wars, the instruction of Luke Skywalker, and unlocking the path to immortality.',
    ),
    const AdoptionEntity(
      id: '2',
      categoryId: '2',
      title: 'Grogu',
      subtitle: 'Youngling',
      description: 'Extraterrestre, +d800 anos',
      distance: '10 mil anos luz',
      isFavorite: false,
      urlImages: [
        'http://disneyplusbrasil.com.br/wp-content/uploads/2020/12/Baby-Yoda-Grogu.jpg',
        'https://static.wikia.nocookie.net/ptstarwars/images/7/72/BabyYoda-Alzmann.png/revision/latest?cb=20210129231109',
        'https://cosmonerd.com.br//uploads/2020/12/grogu-1024x576.jpg',
        'https://br.web.img3.acsta.net/r_654_368/newsv7/20/12/23/16/37/4739755.jpg',
      ],
      about:
          'Grogu, known to many simply as "The Child," was a male Force-sensitive Jedi Initiate and Mandalorian foundling who belonged to the same species as Jedi Grand Master Yoda and Jedi Master Yaddle. Grogu was born in the year 41 BBY, and was raised at the Jedi Temple on Coruscant.',
    ),
  ];

  @override
  List<Bind> get binds => [
        Bind.singleton((args) => person),
        Bind.singleton((args) => adoptions),
        Bind.singleton((args) => categories),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const AdoptionPage()),
        ChildRoute('/detail', child: (ctx, args) => AdoptionDetailPage(adoptionEntity: args.data)),
      ];
}
