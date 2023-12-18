import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';

const _musicItems = [
  'Rap',
  'R&B & Soul',
  'Grammy Awards',
  'Pop',
  'K-pop',
  'Music industry',
  'EDM',
  'Music news',
  'Hip hop',
  'Reggae',
  'Rock',
  'Country music',
  'Latin music',
  'Classical music',
  'Jazz',
  'Blues',
  'Folk & Americana',
  'Metal',
  'Punk',
  'Gospel & Christian music',
  'World music',
];

const _entertainmentItems = [
  'Anime',
  'Movies & TV',
  'Harry Potter',
  'Marvel Universe',
  'Movie news',
  'Naruto',
  'Movies',
  'Grammy Awards',
  'Entertainment',
  'Game of Thrones',
  'Star Wars',
  'The Walking Dead',
];

class InterestsPartTwoPage extends StatefulWidget {
  const InterestsPartTwoPage({super.key});

  @override
  State<InterestsPartTwoPage> createState() => _InterestsPartTwoPageState();
}

class _InterestsPartTwoPageState extends State<InterestsPartTwoPage> {
  final List<bool> _musicToggleStates =
      List.generate(_musicItems.length, (index) => false);

  final List<bool> _entertainmentToggleStates =
      List.generate(_entertainmentItems.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const AppTitle(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: _title(),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: _subtitle(),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 24),
          _interestsTitle('Music'),
          const SizedBox(height: 16),
          _musicSwitches(),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 24),
          _interestsTitle('Entertainment'),
          const SizedBox(height: 24),
          _entertainmentSwitches(),
          const SizedBox(height: 24),
          const Divider(),
        ],
      ),
    );
  }

  Widget _title() {
    return const Text(
      "What do you want to see on Twitter?",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget _subtitle() {
    return Text(
      "Interests are used to personalize your experience and will be visible on your profile.",
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade700,
      ),
    );
  }

  _interestsTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget _musicSwitches() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 800,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 16,
            children: List.generate(
              _musicItems.length,
              (index) => _chip(
                label: _musicItems[index],
                isSelected: _musicToggleStates[index],
                onSelected: (value) {
                  setState(() {
                    _musicToggleStates[index] = value;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  _chip(
      {required String label,
      required bool isSelected,
      required Function(bool) onSelected}) {
    return ChoiceChip(
      selected: isSelected,
      onSelected: onSelected,
      label: Text(label),
      selectedColor: Theme.of(context).primaryColor,
      backgroundColor:
          isSelected ? Theme.of(context).primaryColor : Colors.white,
      side: BorderSide(
        color:
            isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300,
        width: 1,
      ),
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _entertainmentSwitches() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 600,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 16,
            children: List.generate(
              _entertainmentItems.length,
              (index) => _chip(
                label: _entertainmentItems[index],
                isSelected: _entertainmentToggleStates[index],
                onSelected: (value) {
                  setState(() {
                    _entertainmentToggleStates[index] = value;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomAppBar(
      elevation: 0,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: _nextPageButton(),
        ),
      ),
    );
  }

  int get _selectedCount {
    final musicCount = _musicToggleStates.where((element) => element).length;
    final entertainmentCount =
        _entertainmentToggleStates.where((element) => element).length;
    return musicCount + entertainmentCount;
  }

  bool get _formIsValid {
    return _selectedCount >= 3;
  }

  Widget _nextPageButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: GestureDetector(
        onTap: () {
          if (_formIsValid) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const InterestsPartTwoPage(),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: _formIsValid ? Colors.black : Colors.black45,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'Next',
            style: TextStyle(
              color: _formIsValid ? Colors.white : Colors.grey.shade400,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
