import 'package:flutter/material.dart';

class BusesPage extends StatefulWidget {
  final List images;
  final List vehicle;
  const BusesPage({super.key, required this.images, required this.vehicle});

  @override
  State<BusesPage> createState() => _BusesPageState();
}

class _BusesPageState extends State<BusesPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context); // Handle back button logic
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40, // Adjust the height of the TextField
                child: TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    // fillColor: Color(0xFFF5F5F5), // Slightly lighter fill color
                    // filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)), // Rounded corners
                      borderSide:
                          BorderSide(color: Color(0xFFD0D0D0)), // Border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(
                              0xFFD0D0D0)), // Border color for enabled state
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(
                              0xFFD0D0D0)), // Border color for focused state
                    ),
                    hintText: 'Search for a bus',
                    hintStyle:
                        TextStyle(color: Color(0xFFD0D0D0)), // Hint text color
                    prefixIcon: Icon(Icons.search,
                        color: Color(0xFFD0D0D0)), // Icon color
                    contentPadding: EdgeInsets.only(
                      top: 12, // Increase to lower the hint text
                      left: 12, // Horizontal padding for the text
                    ),
                  ),
                  style:
                      const TextStyle(color: Color(0xFF000000)), // Text color
                  onChanged: (query) {
                    // Handle search logic
                    //  print('Search query: $query');
                  },
                ),
              ),
            ),
          ],
        ),
        // backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[100], // Light gray background
            alignment: Alignment.topLeft, // Center align the text
            padding:
                const EdgeInsets.all(5), // Optional padding for better spacing
            child: const Text(
              '     Available Vehicles',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const VIPTILE(
            images: 'vipBus.png',
            busName: 'VIP BUS',
          ),
          const VIPTILE(
            images: 'm2.png',
            busName: 'M2 Express',
          ),
          const VIPTILE(
            images: 'coster.png',
            busName: 'Coster Express',
          ),
          const VIPTILE(
            images: 'stanbic.png',
            busName: 'Stanbic Express',
          ),
        ],
      ),
    );
  }
}

class VIPTILE extends StatefulWidget {
  final String images;
  final String busName;
  const VIPTILE({super.key, required this.images, required this.busName});

  @override
  State<VIPTILE> createState() => _VIPTILEState();
}

class _VIPTILEState extends State<VIPTILE> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        shadowColor:
            Colors.grey.withOpacity(0.5), // Optional: Customize shadow color
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.transparent, // Transparent background
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              // Bus Image
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/${widget.images}'), // Replace with your bus image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Main Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.busName,
                      style: const TextStyle(
                        color: Colors.black, // Text color set to black
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "GR-1234-23",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ), // Slightly lighter black
                    ),
                    const SizedBox(height: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "          Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ), // Add consistent styling
                        ),
                        Row(
                          children: [
                            // Name
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/male1.jpg'),
                              radius: 10,
                              backgroundColor:
                                  Colors.black12, // Darker transparent circle
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Solomon Kwofie",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Additional Info
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "No. of seats",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Text(
                    "40 - 50",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Contact",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  Text(
                    "0557169650",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
