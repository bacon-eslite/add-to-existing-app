import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/provider/location.dart';
import 'package:flutter_module/feature/weather/service/geocoding_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CitySearchBar extends ConsumerStatefulWidget {
  const CitySearchBar({super.key});

  @override
  ConsumerState createState() => _CitySearchBarState();
}

class _CitySearchBarState extends ConsumerState<CitySearchBar> {
  final TextEditingController _controller = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool available = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Form(
            key: _form,
            child: TextFormField(
              controller: _controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a city';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  available = _form.currentState?.validate() ?? false;
                });
              },
              decoration: const InputDecoration(
                labelText: 'City',
                hintText: 'Enter a city',
                errorText: 'Invalid city',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: available
              ? () async {
                  final locations = await GeocodingService()
                      .getLocations(city: _controller.text);
                  ref.read(locationListProvider.notifier).set(locations ?? []);
                }
              : null,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
