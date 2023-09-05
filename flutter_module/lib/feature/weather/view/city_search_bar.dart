import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/style.dart';
import 'package:flutter_module/feature/weather/provider/location.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
              decoration: DecorationStyles.textFieldDecorationStyle(
                labelText: 'City',
                hintText: 'Enter a city',
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: available
              ? () async {
                  ref
                      .read(locationListProvider.notifier)
                      .loadLocations(_controller.text);
                }
              : null,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
