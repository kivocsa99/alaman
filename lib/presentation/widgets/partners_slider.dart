import 'package:alaman/constants.dart';
import 'package:alaman/domain/partner/model/partner.model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class PartnerSlider extends StatelessWidget {
  final List<PartnerModel> partners;
  const PartnerSlider({super.key, required this.partners});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () async => {
            if (!await launchUrl(Uri.parse(partners[index].href!)))
              {throw Exception('Could not launch ${partners[index].href}')}
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ResponsiveRowColumnItem(
                    child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: Image.network(
                                  "$storageUrl/${partners[index].image}")
                              .image,
                          fit: BoxFit.contain)),
                )),
                ResponsiveRowColumnItem(
                    child: Text(
                  partners[index].name!,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium
                      ?.copyWith(color: const Color(0xff16437B)),
                ))
              ],
            ),
          ),
        ),
        itemCount: partners.length,
      ),
    );
  }
}
