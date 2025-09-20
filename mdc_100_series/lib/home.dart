// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'supplemental/asymmetric_view.dart';
import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category = Category.all, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold uses background color from theme
      body: SafeArea(
        child: AsymmetricView(
          products: ProductsRepository.loadProducts(category),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

/// Builds product cards for displaying inside AsymmetricView
List<Card> buildProductCards(BuildContext context) {
  final products = ProductsRepository.loadProducts(Category.all);

  if (products.isEmpty) return const <Card>[];

  final theme = Theme.of(context);
  final formatter = NumberFormat.currency(locale: 'id', symbol: 'Rp ');

  return products.map((product) {
    return Card(
      elevation: 0, // remove shadow
      margin: const EdgeInsets.all(8.0),
      color: Colors.transparent, // make Card background transparent
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {
          debugPrint('Tapped on ${product.name}');
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.6), // use withOpacity
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
            color: theme.colorScheme.surface, // background inside border
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
  }).toList();
}