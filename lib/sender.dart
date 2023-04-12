// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<void> _sendFormData() async {
//   final url = Uri.parse('YOUR_API_URL_HERE');
//   final response = await http.post(
//     url,
//     body: {
//       'total_output': _totalOutputController.text,
//       'materials': _materialsController.text,
//       'box_weight': _boxWeightController.text,
//       'downtime': _downtimeController.text,
//       'percentage_loss': _percentageLossController.text,
//       'casual_index': _casualIndexController.text,
//       'remark': _remarkController.text,
//     },
//   );

//   if (response.statusCode == 200) {
//     print('Form data sent successfully!');
//   } else {
//     throw Exception('Failed to send form data!');
//   }
// }
