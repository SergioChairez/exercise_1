import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: CustomScrollView(
          slivers: [
            _CustomAppBar(),
            SliverList(
                delegate: SliverChildListDelegate([
                  _PosterAndTitle(),
                  _Overview(),

                ])
            ),
          ],
        )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.red,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only( bottom: 10, left: 10, right: 10 ),
          color: Colors.black12,
          child: const Text(
            'title',
            style: const TextStyle( fontSize: 16 ),
            textAlign: TextAlign.center,
          ),
        ),

        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: AssetImage( 'assets/loading.gif' ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {

  const _PosterAndTitle({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only( top: 20 ),
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: Row(
        children: [
          Hero(
            tag: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/no-image.jpg'),
                height: 150,
              ),
            ),
          ),

          const SizedBox( width: 20 ),

          ConstrainedBox(
            constraints: BoxConstraints( maxWidth: size.width - 200 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('title', style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2 ),
                Text('title', style: textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 2 ),

                Row(
                  children: [
                    const Icon( Icons.star_rate, size: 15, color: Colors.grey, ),
                    const SizedBox( width: 5, ),
                    Text('movie.voteAverage.toString()', style: textTheme.caption )
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {

  const _Overview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 30, vertical: 10),
      child: Text(
        'Texto',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}


