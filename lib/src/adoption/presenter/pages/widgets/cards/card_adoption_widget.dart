import 'package:flutter/material.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/widgets/images/custom_image_widget.dart';

class CardAdoptionWidget extends StatelessWidget {
  final String tag;
  final double height;
  final List<String> urlImages;
  final String title;
  final String subtitle;
  final String description;
  final String location;
  final void Function() onTap;

  const CardAdoptionWidget({
    Key? key,
    required this.tag,
    required this.height,
    required this.urlImages,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.2,
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
                child: Hero(
                  tag: tag,
                  child: CustomImageWidget(
                    urlImage: urlImages.first,
                    height: height * 0.2,
                    width: height * 0.2,
                  ),
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
                          title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const Icon(Icons.star_border),
                      ],
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
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
                          location,
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
      ),
    );
  }
}
