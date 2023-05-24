import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({Key? key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: SafeArea(
          child: Row(
            children: [
              Image.asset('assets/images/netflix.png'),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _AppBarButton(title: 'TV Shows', onTap: () => print('TV Shows'),),
                    _AppBarButton(title: 'Movies', onTap: () => print('Movies'),),
                    _AppBarButton(title: 'My List', onTap: () => print('My List'),),

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const _AppBarButton({Key? key, required this.title, required this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Text(
        title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600)),
      onTap: onTap,
    );

  }
}

