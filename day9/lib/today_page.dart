import 'package:flutter/material.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Colors.grey.shade900;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: _body(),
    );
  }

  _body() {
    return Column(
      children: [
        const SizedBox(height: 50.0),
        _appBar(),
        const SizedBox(height: 24.0),
        _calendarTitle(),
        _calendarBody(),
      ],
    );
  }

  _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_appBarLeading(), _appBarAddButton()],
    );
  }

  Widget _appBarLeading() {
    const leadingImageSize = 50.0;
    const leadingImage = AssetImage('assets/images/yujin_clip.png');

    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: ClipOval(
        child: Image(
          image: leadingImage,
          width: leadingImageSize,
          height: leadingImageSize,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  IconButton _appBarAddButton() {
    const icon = Icon(Icons.add);
    const iconSize = 50.0;
    const iconColor = Colors.white;
    return IconButton(
      icon: icon,
      color: iconColor,
      iconSize: iconSize,
      onPressed: () {},
    );
  }

  _calendarTitle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _today(),
          const SizedBox(height: 16.0),
          _andOtherDays(),
        ],
      ),
    );
  }

  _today() {
    const text = 'MONDAY 16';
    return const Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  _andOtherDays() {
    const todayText = 'TODAY';
    const separator = '·';
    const otherDays = '17 18 19 20 21 22';

    const fontSize = 48.0;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Text(
            todayText,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            ),
          ),
          const Text(
            separator,
            style: TextStyle(
              color: Colors.purple,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            otherDays,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }

  _calendarBody() {
    return Expanded(
      child: ListView(
        children: [
          _card(
            color: Colors.yellow,
            title: 'DESIGN\nMEETING',
            friends: ['ALEX', 'HELENA', 'NANA'],
            startHour: '11',
            startMinute: '30',
            endHour: '12',
            endMinute: '20',
          ),
          const SizedBox(height: 10.0),
          _card(
            color: Colors.deepPurple,
            title: 'DAILY\nPROJECT',
            friends: ['ME', 'RICHARD', 'CIRY', '+4'],
            startHour: '12',
            startMinute: '35',
            endHour: '14',
            endMinute: '10',
          ),
          const SizedBox(height: 10.0),
          _card(
            color: Colors.lightGreen,
            title: 'WEEKLY\nPLANNING',
            friends: ['DEN', 'NANA', 'MARK'],
            startHour: '15',
            startMinute: '00',
            endHour: '16',
            endMinute: '30',
          ),
        ],
      ),
    );
  }

  _card(
      {required String title,
      required List<String> friends,
      required String startHour,
      required String endHour,
      required Color color,
      required String startMinute,
      required String endMinute}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          _cardTimeAndTitle(
              title: title,
              startHour: startHour,
              endHour: endHour,
              startMinute: startMinute,
              endMinute: endMinute),
          _cardFriends(friends: friends),
        ],
      ),
    );
  }

  _cardTimeAndTitle(
      {required String title,
      required String startHour,
      required String endHour,
      required String startMinute,
      required String endMinute}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          _cardTime(
              startHour: startHour,
              endHour: endHour,
              startMinute: startMinute,
              endMinute: endMinute),
          const SizedBox(width: 16.0),
          _cardTitle(title: title),
        ],
      ),
    );
  }

  _cardTime(
      {required String startHour,
      required String endHour,
      required String startMinute,
      required String endMinute}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          startHour,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          startMinute,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        const Text(
          '|',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w100),
        ),
        Text(
          endHour,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          endMinute,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _cardTitle({required String title}) {
    return Expanded(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 54.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _cardFriends({required List<String> friends}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const SizedBox(width: 50),
          for (final friend in friends)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                friend,
                style: TextStyle(
                  color: friend == 'ME'
                      ? Colors.black
                      : Colors.black.withOpacity(0.2),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
