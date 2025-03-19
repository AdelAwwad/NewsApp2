import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter()
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../Widgets/Custom_AppBar.dart';
//
// class WebScreen extends StatefulWidget {
//   final String? url;
//   const WebScreen({super.key, this.url});
//
//   @override
//   State<WebScreen> createState() => _WebScreenState();
// }
//
// class _WebScreenState extends State<WebScreen> {
//   bool _isLaunching = false;
//   final Uri _url = Uri.parse('https://flutter.dev'); // Define a valid URL
//
//   Future<void> _launchArticleUrl() async {
//     if (_url.toString().isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Invalid URL')),
//       );
//       return;
//     }
//
//     setState(() => _isLaunching = true);
//
//     try {
//       if (await canLaunchUrl(_url)) {
//         await launchUrl(
//           _url,
//           mode: LaunchMode.externalApplication,
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Could not launch ${_url.toString()}')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: ${e.toString()}')),
//       );
//     } finally {
//       if (mounted) {
//         setState(() => _isLaunching = false);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: const CustomAppbar(),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: CustomScrollView(
//           physics: const BouncingScrollPhysics(),
//           slivers: [
//             const SliverToBoxAdapter(
//               child: Text('Hello', style: TextStyle(fontSize: 18)),
//             ),
//             SliverToBoxAdapter(
//               child: SizedBox(
//                 height: 50,
//                 width: 150,
//                 child: ElevatedButton(
//                   onPressed: _isLaunching ? null : _launchArticleUrl,
//                   child: _isLaunching
//                       ? const CircularProgressIndicator()
//                       : const Text('Open Flutter Website'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
