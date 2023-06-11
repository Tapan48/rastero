import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Book1 extends StatefulWidget {
  @override
  _Book1State createState() => _Book1State();
}

class _Book1State extends State<Book1> {
  List<dynamic> _bookDataList = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchBookDataList();
  }

  Future<void> _fetchBookDataList() async {
    final response = await http
        .get(Uri.parse('https://service-dream-story.onrender.com/books'));

    if (response.statusCode == 200) {
      setState(() {
        _bookDataList = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to fetch book data list');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(32, 32, 32, 1),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 280,
                color: Colors.grey,
                child: _bookDataList.isNotEmpty &&
                        _bookDataList[_selectedIndex].containsKey('url')
                    ? Image.network(_bookDataList[_selectedIndex]['url'],
                        fit: BoxFit.cover)
                    : SizedBox.shrink(),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(48, 48, 48, 0.87),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: Color.fromRGBO(229, 229, 229, 1),
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        if (_bookDataList.isNotEmpty &&
                            _bookDataList[_selectedIndex]
                                .containsKey('bookid') &&
                            _bookDataList[_selectedIndex].containsKey('pageNo'))
                          Text(
                            'Page ${_bookDataList[_selectedIndex]['pageNo']}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        color: const Color.fromRGBO(229, 229, 229, 1),
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: _selectedIndex == 0
                            ? null
                            : () {
                                setState(() {
                                  _selectedIndex--;
                                });
                              },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: _selectedIndex == _bookDataList.length - 1
                            ? null
                            : () {
                                setState(() {
                                  _selectedIndex++;
                                });
                              },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}