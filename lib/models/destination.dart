class Destination {
  late String imageUrl;
  late String type;
   int quantity;
  int sum;
  double prices;
  int count;
  Destination({
    required this.imageUrl,
    required this.type,
    required this.quantity, 
    required this.prices ,
    required this.count,
    required this.sum,
    

  });
}

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/image6.jpeg',
      type: 'ແກງຂຽວຫວານ',
       prices: 30000,
       quantity: 1,
       sum:0,
       count:0
        
      ),
  Destination(
       prices: 40000,
      imageUrl: 'assets/images/image7.jpeg',
      type: 'ຕົ້ມຍຳ',
      quantity: 1,
          sum:0,
       count:0
      ),
  Destination(
      imageUrl: 'assets/images/image8.jpeg',
      type: 'ເຂົ້າຜັດກຸ້ງ',
       prices: 22000,
       quantity: 1,
           sum:0,
       count:0
      ),
  Destination(
       prices: 20000,
      imageUrl: 'assets/images/image9.jpeg',
      type: 'ຕຳໝາກຫຸ່ງ',
      quantity: 1,
          sum:0,
       count:0
      ),
  Destination(
      imageUrl: 'assets/images/image10.jpg',
      type: 'ມັກແມວ',
       prices: 25000,
       quantity: 1,
           sum:0,
       count:0
      ),
];
