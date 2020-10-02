import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/models/products.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    GestureDetector buildSmallPreview(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedImage = index;
          });
        },
        child: Container(
          height: 48,
          width: 48,
          padding: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: selectedImage == index
                      ? kPrimaryColor
                      : Colors.transparent)),
          child: Image.asset(widget.product.images[index]),
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images[selectedImage])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index))
          ],
        ),
      ],
    );
  }
}
