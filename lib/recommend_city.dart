import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:move_on/recomend_city_card.dart';
import 'package:move_on/screens/details/details_screen.dart';

class RecomendedCity extends StatelessWidget {
  const RecomendedCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        RecomendCityCard(
          title: "La Tour Eiffel",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          city: "Paris",
          rate: "5*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "La tour Eiffel",
                    image: "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Jardin public",
          image:
          "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM",
          city: "Bordeaux",
          rate: "4,5*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Jardin Public",
                    image: "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Quinconces",
          image:
          "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg",
          city: "Bordeaux",
          rate: "4,8*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Quinconces",
                    image: "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Porte Cailhau",
          image:
          "https://th.bing.com/th/id/R.a133fbe5869d8efc322b3bb1222f369a?rik=%2fdxN6q%2b0yE67Ew&riu=http%3a%2f%2f1.bp.blogspot.com%2f-6HXmBjf6KvQ%2fU7UYXGdwktI%2fAAAAAAAAGMA%2fst1tAoHmqOw%2fs1600%2fDSCN5512.JPG&ehk=ofJbAUKVuAi1V81NtxEJ3r64VKhQrzLJYIgRoN87lJ0%3d&risl=&pid=ImgRaw&r=0",
          city: "Bordeaux",
          rate: "4,4*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Porte Cailhau",
                    image: "https://th.bing.com/th/id/R.a133fbe5869d8efc322b3bb1222f369a?rik=%2fdxN6q%2b0yE67Ew&riu=http%3a%2f%2f1.bp.blogspot.com%2f-6HXmBjf6KvQ%2fU7UYXGdwktI%2fAAAAAAAAGMA%2fst1tAoHmqOw%2fs1600%2fDSCN5512.JPG&ehk=ofJbAUKVuAi1V81NtxEJ3r64VKhQrzLJYIgRoN87lJ0%3d&risl=&pid=ImgRaw&r=0"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Sainte Catherine",
          image:
          "https://static.actu.fr/uploads/2020/09/20200521-175936-960x640.jpg",
          city: "Bordeaux",
          //price: 580,
          rate: "4,6*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Sainte Catherine",
                    image: "https://static.actu.fr/uploads/2020/09/20200521-175936-960x640.jpg"),
              ),
            );
          },
        ),
      ]),
    );
  }
}

class RecomendedCity_Favorite extends StatelessWidget {
  const RecomendedCity_Favorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        RecomendCityCard(
          title: "La Tour Eiffel",
          image:
          "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg",
          city: "Paris",
          rate: "5*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "La tour Eiffel",
                    image: "https://cdn.getyourguide.com/img/location/5ffeb392eb81e.jpeg/68.jpg"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Jardin Public",
          image:
          "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM",
          city: "Bordeaux",
          rate: "4,5*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Jardin public",
                    image: "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Quinconces",
          image:
          "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg",
          city: "Bordeaux",
          rate: "4,8*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Quinconces",
                    image: "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Porte Cailhau",
          image:
          "https://th.bing.com/th/id/R.a133fbe5869d8efc322b3bb1222f369a?rik=%2fdxN6q%2b0yE67Ew&riu=http%3a%2f%2f1.bp.blogspot.com%2f-6HXmBjf6KvQ%2fU7UYXGdwktI%2fAAAAAAAAGMA%2fst1tAoHmqOw%2fs1600%2fDSCN5512.JPG&ehk=ofJbAUKVuAi1V81NtxEJ3r64VKhQrzLJYIgRoN87lJ0%3d&risl=&pid=ImgRaw&r=0",
          city: "France",
          rate: "4,4*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Porte Cailhau",
                    image: "https://th.bing.com/th/id/R.a133fbe5869d8efc322b3bb1222f369a?rik=%2fdxN6q%2b0yE67Ew&riu=http%3a%2f%2f1.bp.blogspot.com%2f-6HXmBjf6KvQ%2fU7UYXGdwktI%2fAAAAAAAAGMA%2fst1tAoHmqOw%2fs1600%2fDSCN5512.JPG&ehk=ofJbAUKVuAi1V81NtxEJ3r64VKhQrzLJYIgRoN87lJ0%3d&risl=&pid=ImgRaw&r=0"
                ),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Sainte Catherine",
          image:
          "https://static.actu.fr/uploads/2020/09/20200521-175936-960x640.jpg",
          city: "Bordeaux",
          rate: "4,6*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Sainte Catherine",
                    image: "https://static.actu.fr/uploads/2020/09/20200521-175936-960x640.jpg"),
              ),
            );
          },
        ),
      ]),
    );
  }
}

class RecomendedCity_Profil extends StatelessWidget {
  const RecomendedCity_Profil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = "";
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        RecomendCityCard(
          title: "Jardin Public",
          image:
          "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM",
          city: "Bordeaux",
          rate: "4,5*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Jardin public",
                    image: "https://www.bing.com/th?id=Ade945c621ab51a1ac17eb981bd3584ca&w=188&h=132&c=7&o=6&dpr=1.25&pid=SANGAM"),
              ),
            );
          },
        ),
        RecomendCityCard(
          title: "Quinconces",
          image:
          "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg",
          city: "Bordeaux",
          rate: "4,8*",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                    title: "Quinconces",
                    image: "https://i.pinimg.com/originals/d2/52/46/d2524646bbf61c45a0dcbb0f4f4a7223.jpg"),
              ),
            );
          },
        ),
      ]),
    );
  }
}