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

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      Product(
        category: Category.home,
        id: 0,
        isFeatured: true,
        name: 'Rimuru Poster 01',
        price: 240000,
      ),
      Product(
        category: Category.accessories,
        id: 1,
        isFeatured: true,
        name: 'Tensura Keychains 01',
        price: 80000,
      ),
      Product(
        category: Category.clothing,
        id: 2,
        isFeatured: false,
        name: 'Rimuru Hoodie 01',
        price: 300000,
      ),
      Product(
        category: Category.accessories,
        id: 3,
        isFeatured: true,
        name: 'Rimuru Sticker',
        price: 20000,
      ),
      Product(
        category: Category.accessories,
        id: 4,
        isFeatured: false,
        name: 'Tensura Keychains 02',
        price: 80000,
      ),
      Product(
        category: Category.clothing,
        id: 5,
        isFeatured: false,
        name: 'Rimuru T-Shirt 01',
        price: 100000,
      ),
      Product(
        category: Category.accessories,
        id: 6,
        isFeatured: false,
        name: 'Rimuru Visual Card',
        price: 40000,
      ),
      Product(
        category: Category.home,
        id: 7,
        isFeatured: true,
        name: 'Rimuru Figure 01',
        price: 2000000,
      ),
      Product(
        category: Category.home,
        id: 8,
        isFeatured: true,
        name: 'True Demon Lord Rimuru Figure 01',
        price: 3000000,
      ),
      Product(
        category: Category.clothing,
        id: 9,
        isFeatured: true,
        name: 'Rimuru T-Shirt 02',
        price: 110000,
      ),
      Product(
        category: Category.home,
        id: 10,
        isFeatured: false,
        name: 'Rimuru Figure 02',
        price: 1800000,
      ),
      Product(
        category: Category.home,
        id: 11,
        isFeatured: false,
        name: 'True Demon Lord Rimuru Figure 02',
        price: 2800000,
      ),
      Product(
        category: Category.home,
        id: 12,
        isFeatured: false,
        name: 'Tensura Mug 01',
        price: 34000,
      ),
      Product(
        category: Category.home,
        id: 13,
        isFeatured: true,
        name: 'Rimuru Poster 02',
        price: 18,
      ),
      Product(
        category: Category.home,
        id: 14,
        isFeatured: true,
        name: 'Souei Figure',
        price: 1500000,
      ),
      Product(
        category: Category.accessories,
        id: 15,
        isFeatured: true,
        name: 'Shion Keychain',
        price: 80000,
      ),
      Product(
        category: Category.home,
        id: 16,
        isFeatured: true,
        name: 'Rimuru Figure 03',
        price: 1900000,
      ),
      Product(
        category: Category.home,
        id: 17,
        isFeatured: false,
        name: 'Exorcist Rimuru and Diablo Figure',
        price: 3000000,
      ),
      Product(
        category: Category.home,
        id: 18,
        isFeatured: true,
        name: 'Tensura Acryllic Stand',
        price: 200000,
      ),
      Product(
        category: Category.home,
        id: 19,
        isFeatured: false,
        name: 'Tensura Mini Figure',
        price: 100000,
      ),
      Product(
        category: Category.home,
        id: 20,
        isFeatured: false,
        name: 'Yukata Shion and Shuna Figure',
        price: 2800000,
      ),
      Product(
        category: Category.home,
        id: 21,
        isFeatured: false,
        name: 'Diablo Chibi Figure',
        price: 1000000,
      ),
      Product(
        category: Category.home,
        id: 22,
        isFeatured: false,
        name: 'Slime Rimuru Plushie',
        price: 500000,
      ),
      Product(
        category: Category.accessories,
        id: 23,
        isFeatured: false,
        name: 'Tensura Keychain 03',
        price: 80000,
      ),
      Product(
        category: Category.home,
        id: 24,
        isFeatured: true,
        name: 'Tensura Manga',
        price: 600000,
      ),
      Product(
        category: Category.home,
        id: 25,
        isFeatured: false,
        name: 'Benimaru Figure',
        price: 1780000,
      ),
      Product(
        category: Category.home,
        id: 26,
        isFeatured: false,
        name: 'Milim Nava School Figure',
        price: 2200000,
      ),
      Product(
        category: Category.home,
        id: 27,
        isFeatured: true,
        name: 'Samurai Rimuru(Diablo Color)Figure',
        price: 2400000,
      ),
      Product(
        category: Category.clothing,
        id: 28,
        isFeatured: true,
        name: 'Rimuru T-Shirt 03',
        price: 200000,
      ),
      Product(
        category: Category.clothing,
        id: 29,
        isFeatured: true,
        name: 'Empty',
        price: 0,
      ),
      Product(
        category: Category.home,
        id: 30,
        isFeatured: true,
        name: 'True Demon Lord Rimuru Figure 03',
        price: 3000000,
      ),
      Product(
        category: Category.home,
        id: 31,
        isFeatured: false,
        name: 'Rimuru School Figure',
        price: 2300000,
      ),
      Product(
        category: Category.clothing,
        id: 32,
        isFeatured: false,
        name: 'Milim Nava T-Shirt',
        price: 250000,
      ),
      Product(
        category: Category.home,
        id: 33,
        isFeatured: true,
        name: 'Rimuru and Milim Chibi Figure',
        price: 1000000,
      ),
      Product(
        category: Category.clothing,
        id: 34,
        isFeatured: false,
        name: 'Rimuru Hoodie 02',
        price: 350000,
      ),
      Product(
        category: Category.home,
        id: 35,
        isFeatured: false,
        name: 'Fallen Angel Rimuru Figure',
        price: 2600000,
      ),
      Product(
        category: Category.home,
        id: 36,
        isFeatured: false,
        name: 'True Demon Lord Rimuru Figure 04',
        price: 3200000,
      ),
      Product(
        category: Category.accessories,
        id: 37,
        isFeatured: true,
        name: 'Milim Keychain',
        price: 100000,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
