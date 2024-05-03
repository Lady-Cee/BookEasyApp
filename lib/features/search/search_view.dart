import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();
  List<String> duplex = [
    "Bella View Duplex",
    "Sammy's Duplex",
    "Vincent Homes Bungalow",
    "Kennys Bungalow",
    "Ann Apartment",
    "Lakeview Apartment",
  ];

  List<String> filteredDuplex = [];
  bool isTyping = false;

  @override
  void initState(){
    super.initState();
   // filteredDuplex = duplex;
  }

  void filteredSearchResults(String query) {
    List<String> _searchList = [];
    _searchList.addAll(duplex);
    if(query.isNotEmpty) {
      List<String> _searchResultList = [];
      _searchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          _searchResultList.add(item);
        }
      });
      setState(() {
        filteredDuplex = _searchResultList;
      });
    } else {
      setState(() {
        filteredDuplex = []; // Clear the list when query is empty
        isTyping = false; // Set to false when user stops typing
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text("Search", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          filteredSearchResults(value);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Search by location",
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: const Icon(Icons.keyboard_voice_rounded),
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),

                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.001), // Adjust spacing between TextField and Image
                  Image.asset("assets/home/filter.png", width: 50, height: 60),

                ],
              ),
              SizedBox(height: 10),

              Container(
                // height: 50,
                // width: 200,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredDuplex.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(filteredDuplex[index]),
                        onTap: (){
                          if(filteredDuplex[index] == "Bella View Duplex") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                builder: (context) => HomePage(),
                                ),
                          );
                          }
                        },
                      );
                    }
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
