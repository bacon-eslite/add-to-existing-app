import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/style/style.dart';
import '../../../generated/l10n.dart';
import '../provider/city_list.dart';

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
                  return S.of(context).weather_search_hint_error;
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  available = _form.currentState?.validate() ?? false;
                });
              },
              decoration: DecorationStyles.textFieldDecorationStyle(
                labelText: S.of(context).weather_search_label_city,
                hintText: S.of(context).weather_search_hint_city,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: available
              ? () async {
                  ref
                      .read(cityListProvider.notifier)
                      .getCitiesByName(_controller.text);
                }
              : null,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
