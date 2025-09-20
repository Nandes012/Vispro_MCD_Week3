import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/product.dart';

class OneProductCardColumn extends StatelessWidget {
  final Product product;
  final ThemeData theme;
  final NumberFormat formatter;

  const OneProductCardColumn({
    Key? key,
    required this.product,
    required this.theme,
    required this.formatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _BorderedProductCard(
          product: product,
          theme: theme,
          formatter: formatter,
        ),
        const SizedBox(height: 40.0),
      ],
    );
  }
}

class TwoProductCardColumn extends StatelessWidget {
  final Product bottom;
  final Product? top;
  final ThemeData theme;
  final NumberFormat formatter;

  const TwoProductCardColumn({
    Key? key,
    required this.bottom,
    this.top,
    required this.theme,
    required this.formatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (top != null)
          _BorderedProductCard(
            product: top!,
            theme: theme,
            formatter: formatter,
          ),
        if (top != null) const SizedBox(height: 30.0),
        _BorderedProductCard(
          product: bottom,
          theme: theme,
          formatter: formatter,
        ),
      ],
    );
  }
}

class _BorderedProductCard extends StatelessWidget {
  final Product product;
  final ThemeData theme;
  final NumberFormat formatter;

  const _BorderedProductCard({
    Key? key,
    required this.product,
    required this.theme,
    required this.formatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {
          debugPrint('Tapped on ${product.name}');
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.6),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
            color: theme.colorScheme.surface,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16.0),
                ),
                child: AspectRatio(
                  aspectRatio: 18 / 11,
                  child: Image.asset(
                    product.assetName,
                    package: product.assetPackage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Product Details
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      formatter.format(product.price),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}