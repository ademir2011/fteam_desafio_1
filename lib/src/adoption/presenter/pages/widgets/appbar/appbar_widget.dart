import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  final double height;
  final IconData? leadingIcon;
  final String urlImage;
  final String title;
  final String subtitle;
  final void Function()? onPressedLeading;
  final void Function()? onTapTrailing;

  const AppBarWidget({
    Key? key,
    required this.height,
    required this.width,
    this.urlImage = '',
    this.leadingIcon,
    this.title = '',
    this.subtitle = '',
    this.onTapTrailing,
    this.onPressedLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actions: [
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                constraints: const BoxConstraints(),
                onPressed: onPressedLeading,
                icon: Icon(leadingIcon, color: Theme.of(context).iconTheme.color),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              urlImage.isEmpty
                  ? InkWell(
                      onTap: onTapTrailing,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(.25),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.heart_broken,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        urlImage,
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(width, height);
}
