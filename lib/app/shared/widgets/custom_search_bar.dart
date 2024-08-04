import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homevice/app/common/theme/fonts.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final void Function()? onTap;
  const CustomSearchBar({
    super.key,
    required this.searchController,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      onTap: onTap,
      child: TextField(
        controller: searchController,
        cursorColor: Colors.blue,
        style: regularText14,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          hintText: 'Cari...',
          hintStyle: regularText16.copyWith(
            color: Colors.grey,
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.all(15),
            width: 18,
            child: SvgPicture.asset(
              'assets/icons/ic_search.svg',
              // colorFilter: const ColorFilter.mode(
              //   Colors.grey,
              //   BlendMode.srcIn,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
