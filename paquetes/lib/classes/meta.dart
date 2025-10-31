class Meta {
  String poweredBy;
  String upgradeUrl;
  String docsUrl;
  String templateGallery;
  String message;
  List<String> features;
  String upgradeCta;

  Meta({
    required this.poweredBy,
    required this.upgradeUrl,
    required this.docsUrl,
    required this.templateGallery,
    required this.message,
    required this.features,
    required this.upgradeCta,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    poweredBy: json['powered_by'],
    upgradeUrl: json['upgrade_url'],
    docsUrl: json['docs_url'],
    templateGallery: json['template_gallery'],
    message: json['message'],
    features: List<String>.from(json['features'].map((x) => x)),
    upgradeCta: json['upgrade_cta'],
  );

  Map<String, dynamic> toJson() => {
    'powered_by': poweredBy,
    'upgrade_url': upgradeUrl,
    'docs_url': docsUrl,
    'template_gallery': templateGallery,
    'message': message,
    'features': List<dynamic>.from(features.map((x) => x)),
    'upgrade_cta': upgradeCta,
  };
}
