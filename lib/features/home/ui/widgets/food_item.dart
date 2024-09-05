import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../../../../data/models/models.dart';
import '../../../widgets/widgets.dart';

class FoodItem extends StatefulWidget {
  final int index;
  final Product product;
  final double height;
  final double width;
  final bool isRecommended;

  const FoodItem({
    super.key,
    required this.index,
    required this.product,
    required this.height,
    required this.width,
    this.isRecommended = false,
  });

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) => ZoomTapAnimation(
        onTap: () {},
        child: widget.isRecommended
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _foodItem,
                  24.sH,
                ],
              )
            : _foodItem,
      );

  Widget get _foodItem => SizedBox(
        height: widget.height,
        width: widget.width,
        child: Padding(
          padding: EdgeInsets.only(
            left: !widget.isRecommended && widget.index == 0 ? 16 : 0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: widget.height - 30,
                width: widget.width,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  widget.product.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: widget.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product.name.uz,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyscale600,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.brand900,
                      ),
                      child: Text(
                        '\$${widget.product.price}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.foodkaWhite,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
