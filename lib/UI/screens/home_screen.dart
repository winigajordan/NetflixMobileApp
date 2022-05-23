import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/models/movie.dart';
import 'package:netflix/services/api_service.dart';
import 'package:netflix/shared/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie>? movies;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovies();
  }

  void getMovies() {
    ApiService().getPopularMovies(pageNumber: 1).then((movieList) => {
          setState(() {
              movies = movieList;
              //print(movies);
            },
          )
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wjBackgroundColor,
      appBar: AppBar(
        backgroundColor: wjBackgroundColor,
        leading: Image.asset("assets/images/logo_netflix.png"),
      ),
      body: ListView(children: [
        Container(
          height: 568,
          color: wjPrimaryColor,
          child: movies == null
              ? const Center(
                  child: Text("film indisponible"),
                )
              : Image.network(
                  movies![0].posterUrl(),
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Tendances actuelles",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 190.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 180,
                  height: 127,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.grey,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Actuellement au cinéma",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 375,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 250,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.red,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Tendances actuelles",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 190.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  height: 180,
                  width: 127,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.grey,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        )
      ]),
    );
  }
}


/* 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wjBackgroundColor,
      appBar: AppBar(
        backgroundColor: wjBackgroundColor,
        leading: Image.asset("assets/images/logo_netflix.png"),
      ),
      body: ListView(children: [
        Container(
          height: 568,
          color: wjPrimaryColor,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Tendances actuelles",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 190.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 180,
                  height: 127,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.grey,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Actuellement au cinéma",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 375,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  width: 250,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.red,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Tendances actuelles",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 190.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: ((context, index) => Container(
                  height: 180,
                  width: 127,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.grey,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                )),
          ),
        )
      ]),
    );
  }
}
 */