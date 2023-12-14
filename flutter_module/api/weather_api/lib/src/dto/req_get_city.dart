class ReqGetCity {
  final String name;
  final String? count;
  final String? format;
  final String? language;
  final String? apikey;

  ReqGetCity({
    required this.name,
    this.count,
    this.format,
    this.language,
    this.apikey,
  });

  // get query params for request ignore null value as map
  Map<String, dynamic> get queryParams => {
        'name': name,
        if (count != null) 'count': count,
        if (format != null) 'format': format,
        if (language != null) 'language': language,
        if (apikey != null) 'apikey': apikey,
      };
}
