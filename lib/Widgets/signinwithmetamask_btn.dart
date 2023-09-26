import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class signinwithmetamask_btn extends StatelessWidget {
  const signinwithmetamask_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('metamask'),
      child: SvgPicture.asset(
        'Assets/svg/metamask.svg',
        width: 30,
        height: 30,
      ),
    );
  }
}