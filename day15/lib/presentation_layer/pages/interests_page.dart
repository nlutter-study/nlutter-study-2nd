import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';

const _interests = [
  'Fashion & beauty',
  'Outdoors',
  'Arts & culture',
  'Animation & comics',
  'Business & finace',
  'Food',
  'Travel',
  'Entertainment',
  'Music',
  'Gaming',
  'Sports',
  'Technology',
  'Science',
  'Health & fitness',
  'News & politics',
  'Home & garden',
  'Parenting',
  'DIY & crafts',
  'Relationships',
  'Pets',
  'Books & literature',
  'Design',
  'Photography',
  'Education',
  'Auto',
  'Other'
];

class InterestsPage extends StatefulWidget {
  const InterestsPage({super.key});

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  final List<bool> _toggleStates =
      List.generate(_interests.length, (index) => false);

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
          _interestCards(),
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
      "Select at least 3 interests to personalize your Twitter experience. They will be visible on your profile.",
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade700,
      ),
    );
  }

  Widget _interestCards() {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: List.generate(_toggleStates.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _toggleStates[index] = !_toggleStates[index];
              });
            },
            child: InterestCard(
              interest: _interests[index],
              selected: _toggleStates[index],
            ),
          );
        }),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _selectedInterestsCount(),
            _nextPageButton(),
          ],
        ),
      ),
    );
  }

  Widget _selectedInterestsCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: (!_formIsValid)
          ? Text(
              '$_selectedCount of 3 selected',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            )
          : Row(
              children: [
                Text(
                  'Great work 🎉',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
                const SizedBox(width: 4),
              ],
            ),
    );
  }

  int get _selectedCount {
    final count = _toggleStates.where((element) => element).length;
    return count;
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
