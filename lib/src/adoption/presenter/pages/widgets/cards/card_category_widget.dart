import 'package:flutter/material.dart';

class CardCategoryWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onTap;
  final bool isSelected;

  const CardCategoryWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    this.title = '',
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: title.isEmpty
            ? Icon(
                icon,
                color: isSelected ? Theme.of(context).colorScheme.secondary : null,
              )
            : Row(
                children: [
                  Icon(
                    icon,
                    color: isSelected ? Theme.of(context).colorScheme.secondary : null,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isSelected ? Theme.of(context).colorScheme.secondary : null,
                        ),
                  ),
                ],
              ),
      ),
    );
  }
}
