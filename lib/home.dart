import 'package:flutter/material.dart';

class TicketListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: TicketData.tickets.length,
        itemBuilder: (context, index) {
          return TicketItem(ticket: TicketData.tickets[index]);
        },
      ),
    );
  }
}

class Ticket {
  final String title;
  final String details;
  final String date;

  Ticket({required this.title, required this.details, required this.date});
}

class TicketData {
  static List<Ticket> tickets = [
    Ticket(
      title: 'Property Damage',
      details:
          'Sarah Davis was witnessed defacing public property in a local park. She was caught spray painting graffiti on the walls of a restroom facility.',
      date: 'May 20, 2023',
    ),
    Ticket(
      title: 'Reckless Driving',
      details:
          'Michael Thompson was observed driving recklessly on the highway, weaving in and out of lanes, and disregarding traffic signals',
      date: 'May 25, 2023',
    ),
    Ticket(
      title: 'Speeding Violation',
      details:
          'Was caught exceeding the posted speed limit of 60 mph in a 45 mph zone on Main Street.',
      date: 'May 25, 2023',
    ),
    // Add more tickets here...
  ];
}

class TicketItem extends StatelessWidget {
  final Ticket ticket;

  TicketItem({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ticket.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            ticket.details,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Date: ${ticket.date}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
