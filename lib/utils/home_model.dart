class home_model {
  int? _statusId;
  Resbody? _resbody;

  home_model({int? statusId, Resbody? resbody}) {
    if (statusId != null) {
      this._statusId = statusId;
    }
    if (resbody != null) {
      this._resbody = resbody;
    }
  }

  int? get statusId => _statusId;
  set statusId(int? statusId) => _statusId = statusId;
  Resbody? get resbody => _resbody;
  set resbody(Resbody? resbody) => _resbody = resbody;

  home_model.fromJson(Map<String, dynamic> json) {
    _statusId = json['statusId'];
    _resbody =
        json['resbody'] != null ? new Resbody.fromJson(json['resbody']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusId'] = this._statusId;
    if (this._resbody != null) {
      data['resbody'] = this._resbody!.toJson();
    }
    return data;
  }
}

class Resbody {
  int? _totalSectionCount;
  List<Sections>? _sections;

  Resbody({int? totalSectionCount, List<Sections>? sections}) {
    if (totalSectionCount != null) {
      this._totalSectionCount = totalSectionCount;
    }
    if (sections != null) {
      this._sections = sections;
    }
  }

  int? get totalSectionCount => _totalSectionCount;
  set totalSectionCount(int? totalSectionCount) =>
      _totalSectionCount = totalSectionCount;
  List<Sections>? get sections => _sections;
  set sections(List<Sections>? sections) => _sections = sections;

  Resbody.fromJson(Map<String, dynamic> json) {
    _totalSectionCount = json['totalSectionCount'];
    if (json['sections'] != null) {
      _sections = <Sections>[];
      json['sections'].forEach((v) {
        _sections!.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalSectionCount'] = this._totalSectionCount;
    if (this._sections != null) {
      data['sections'] = this._sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sections {
  int? _id;
  String? _title;
  int? _sequence;
  int? _layoutType;
  int? _isTitleEnabled;
  String? _backgroundImg;
  String? _backgroundColor;
  String? _text;
  int? _contentType;
  List<ContentData>? _contentData;

  Sections(
      {int? id,
      String? title,
      int? sequence,
      int? layoutType,
      int? isTitleEnabled,
      String? backgroundImg,
      String? backgroundColor,
      String? text,
      int? contentType,
      List<ContentData>? contentData}) {
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (sequence != null) {
      this._sequence = sequence;
    }
    if (layoutType != null) {
      this._layoutType = layoutType;
    }
    if (isTitleEnabled != null) {
      this._isTitleEnabled = isTitleEnabled;
    }
    if (backgroundImg != null) {
      this._backgroundImg = backgroundImg;
    }
    if (backgroundColor != null) {
      this._backgroundColor = backgroundColor;
    }
    if (text != null) {
      this._text = text;
    }
    if (contentType != null) {
      this._contentType = contentType;
    }
    if (contentData != null) {
      this._contentData = contentData;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  int? get sequence => _sequence;
  set sequence(int? sequence) => _sequence = sequence;
  int? get layoutType => _layoutType;
  set layoutType(int? layoutType) => _layoutType = layoutType;
  int? get isTitleEnabled => _isTitleEnabled;
  set isTitleEnabled(int? isTitleEnabled) => _isTitleEnabled = isTitleEnabled;
  String? get backgroundImg => _backgroundImg;
  set backgroundImg(String? backgroundImg) => _backgroundImg = backgroundImg;
  String? get backgroundColor => _backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _backgroundColor = backgroundColor;
  String? get text => _text;
  set text(String? text) => _text = text;
  int? get contentType => _contentType;
  set contentType(int? contentType) => _contentType = contentType;
  List<ContentData>? get contentData => _contentData;
  set contentData(List<ContentData>? contentData) => _contentData = contentData;

  Sections.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _sequence = json['sequence'];
    _layoutType = json['layoutType'];
    _isTitleEnabled = json['isTitleEnabled'];
    _backgroundImg = json['backgroundImg'];
    _backgroundColor = json['backgroundColor'];
    _text = json['text'];
    _contentType = json['contentType'];
    if (json['contentData'] != null) {
      _contentData = <ContentData>[];
      json['contentData'].forEach((v) {
        _contentData!.add(new ContentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['sequence'] = this._sequence;
    data['layoutType'] = this._layoutType;
    data['isTitleEnabled'] = this._isTitleEnabled;
    data['backgroundImg'] = this._backgroundImg;
    data['backgroundColor'] = this._backgroundColor;
    data['text'] = this._text;
    data['contentType'] = this._contentType;
    if (this._contentData != null) {
      data['contentData'] = this._contentData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ContentData {
  int? _id;
  int? _sectionId;
  String? _webViewTitle;
  int? _contentType;
  String? _mediaUrl;
  String? _prefix;
  ProductJson? _productJson;
  String? _mediaText;
  String? _youtubeId;
  String? _altText;
  String? _hiddenText;
  String? _redirectUrl;
  String? _startDate;
  String? _endDate;
  Null? _offerText;
  String? _isTimerEnable;

  ContentData(
      {int? id,
      int? sectionId,
      String? webViewTitle,
      int? contentType,
      String? mediaUrl,
      String? prefix,
      ProductJson? productJson,
      String? mediaText,
      String? youtubeId,
      String? altText,
      String? hiddenText,
      String? redirectUrl,
      String? startDate,
      String? endDate,
      Null? offerText,
      String? isTimerEnable}) {
    if (id != null) {
      this._id = id;
    }
    if (sectionId != null) {
      this._sectionId = sectionId;
    }
    if (webViewTitle != null) {
      this._webViewTitle = webViewTitle;
    }
    if (contentType != null) {
      this._contentType = contentType;
    }
    if (mediaUrl != null) {
      this._mediaUrl = mediaUrl;
    }
    if (prefix != null) {
      this._prefix = prefix;
    }
    if (productJson != null) {
      this._productJson = productJson;
    }
    if (mediaText != null) {
      this._mediaText = mediaText;
    }
    if (youtubeId != null) {
      this._youtubeId = youtubeId;
    }
    if (altText != null) {
      this._altText = altText;
    }
    if (hiddenText != null) {
      this._hiddenText = hiddenText;
    }
    if (redirectUrl != null) {
      this._redirectUrl = redirectUrl;
    }
    if (startDate != null) {
      this._startDate = startDate;
    }
    if (endDate != null) {
      this._endDate = endDate;
    }
    if (offerText != null) {
      this._offerText = offerText;
    }
    if (isTimerEnable != null) {
      this._isTimerEnable = isTimerEnable;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get sectionId => _sectionId;
  set sectionId(int? sectionId) => _sectionId = sectionId;
  String? get webViewTitle => _webViewTitle;
  set webViewTitle(String? webViewTitle) => _webViewTitle = webViewTitle;
  int? get contentType => _contentType;
  set contentType(int? contentType) => _contentType = contentType;
  String? get mediaUrl => _mediaUrl;
  set mediaUrl(String? mediaUrl) => _mediaUrl = mediaUrl;
  String? get prefix => _prefix;
  set prefix(String? prefix) => _prefix = prefix;
  ProductJson? get productJson => _productJson;
  set productJson(ProductJson? productJson) => _productJson = productJson;
  String? get mediaText => _mediaText;
  set mediaText(String? mediaText) => _mediaText = mediaText;
  String? get youtubeId => _youtubeId;
  set youtubeId(String? youtubeId) => _youtubeId = youtubeId;
  String? get altText => _altText;
  set altText(String? altText) => _altText = altText;
  String? get hiddenText => _hiddenText;
  set hiddenText(String? hiddenText) => _hiddenText = hiddenText;
  String? get redirectUrl => _redirectUrl;
  set redirectUrl(String? redirectUrl) => _redirectUrl = redirectUrl;
  String? get startDate => _startDate;
  set startDate(String? startDate) => _startDate = startDate;
  String? get endDate => _endDate;
  set endDate(String? endDate) => _endDate = endDate;
  Null? get offerText => _offerText;
  set offerText(Null? offerText) => _offerText = offerText;
  String? get isTimerEnable => _isTimerEnable;
  set isTimerEnable(String? isTimerEnable) => _isTimerEnable = isTimerEnable;

  ContentData.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _webViewTitle = json['webViewTitle'];
    _contentType = json['contentType'];
    _mediaUrl = json['mediaUrl'];
    _prefix = json['prefix'];
    _productJson = json['product_json'] != null
        ? new ProductJson.fromJson(json['product_json'])
        : null;
    _mediaText = json['mediaText'];
    _youtubeId = json['youtube_id'];
    _altText = json['altText'];
    _hiddenText = json['hiddenText'];
    _redirectUrl = json['redirectUrl'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _offerText = json['offerText'];
    _isTimerEnable = json['isTimerEnable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['sectionId'] = this._sectionId;
    data['webViewTitle'] = this._webViewTitle;
    data['contentType'] = this._contentType;
    data['mediaUrl'] = this._mediaUrl;
    data['prefix'] = this._prefix;
    if (this._productJson != null) {
      data['product_json'] = this._productJson!.toJson();
    }
    data['mediaText'] = this._mediaText;
    data['youtube_id'] = this._youtubeId;
    data['altText'] = this._altText;
    data['hiddenText'] = this._hiddenText;
    data['redirectUrl'] = this._redirectUrl;
    data['startDate'] = this._startDate;
    data['endDate'] = this._endDate;
    data['offerText'] = this._offerText;
    data['isTimerEnable'] = this._isTimerEnable;
    return data;
  }
}

class ProductJson {
  int? _id;
  String? _title;
  Null? _bodyHtml;
  String? _vendor;
  String? _productType;
  String? _createdAt;
  String? _handle;
  String? _updatedAt;
  String? _publishedAt;
  String? _templateSuffix;
  String? _status;
  String? _publishedScope;
  String? _tags;
  String? _adminGraphqlApiId;
  List<Variants>? _variants;
  List<Options>? _options;
  List<Null>? _images;
  Image1? _image;
  int? _sugarType;
  List<SugarOptions>? _sugarOptions;
  String? _youtubeId;
  Null? _htmlBodyV2;

  ProductJson(
      {int? id,
      String? title,
      Null? bodyHtml,
      String? vendor,
      String? productType,
      String? createdAt,
      String? handle,
      String? updatedAt,
      String? publishedAt,
      String? templateSuffix,
      String? status,
      String? publishedScope,
      String? tags,
      String? adminGraphqlApiId,
      List<Variants>? variants,
      List<Options>? options,
      List<Null>? images,
      Image1? image,
      int? sugarType,
      List<SugarOptions>? sugarOptions,
      String? youtubeId,
      Rating? rating,
      Null? htmlBodyV2}) {
    if (id != null) {
      this._id = id;
    }
    if (title != null) {
      this._title = title;
    }
    if (bodyHtml != null) {
      this._bodyHtml = bodyHtml;
    }
    if (vendor != null) {
      this._vendor = vendor;
    }
    if (productType != null) {
      this._productType = productType;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (handle != null) {
      this._handle = handle;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (publishedAt != null) {
      this._publishedAt = publishedAt;
    }
    if (templateSuffix != null) {
      this._templateSuffix = templateSuffix;
    }
    if (status != null) {
      this._status = status;
    }
    if (publishedScope != null) {
      this._publishedScope = publishedScope;
    }
    if (tags != null) {
      this._tags = tags;
    }
    if (adminGraphqlApiId != null) {
      this._adminGraphqlApiId = adminGraphqlApiId;
    }
    if (variants != null) {
      this._variants = variants;
    }
    if (options != null) {
      this._options = options;
    }
    if (images != null) {
      this._images = images;
    }
    if (image != null) {
      this._image = image;
    }
    if (sugarType != null) {
      this._sugarType = sugarType;
    }
    if (sugarOptions != null) {
      this._sugarOptions = sugarOptions;
    }
    if (youtubeId != null) {
      this._youtubeId = youtubeId;
    }

    if (htmlBodyV2 != null) {
      this._htmlBodyV2 = htmlBodyV2;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  Null? get bodyHtml => _bodyHtml;
  set bodyHtml(Null? bodyHtml) => _bodyHtml = bodyHtml;
  String? get vendor => _vendor;
  set vendor(String? vendor) => _vendor = vendor;
  String? get productType => _productType;
  set productType(String? productType) => _productType = productType;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get handle => _handle;
  set handle(String? handle) => _handle = handle;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get publishedAt => _publishedAt;
  set publishedAt(String? publishedAt) => _publishedAt = publishedAt;
  String? get templateSuffix => _templateSuffix;
  set templateSuffix(String? templateSuffix) =>
      _templateSuffix = templateSuffix;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get publishedScope => _publishedScope;
  set publishedScope(String? publishedScope) =>
      _publishedScope = publishedScope;
  String? get tags => _tags;
  set tags(String? tags) => _tags = tags;
  String? get adminGraphqlApiId => _adminGraphqlApiId;
  set adminGraphqlApiId(String? adminGraphqlApiId) =>
      _adminGraphqlApiId = adminGraphqlApiId;
  List<Variants>? get variants => _variants;
  set variants(List<Variants>? variants) => _variants = variants;
  List<Options>? get options => _options;
  set options(List<Options>? options) => _options = options;
  List<Null>? get images => _images;
  set images(List<Null>? images) => _images = images;
  Image1? get image => _image;
  set image(Image1? image) => _image = image;
  int? get sugarType => _sugarType;
  set sugarType(int? sugarType) => _sugarType = sugarType;
  List<SugarOptions>? get sugarOptions => _sugarOptions;
  set sugarOptions(List<SugarOptions>? sugarOptions) =>
      _sugarOptions = sugarOptions;
  String? get youtubeId => _youtubeId;
  set youtubeId(String? youtubeId) => _youtubeId = youtubeId;

  Null? get htmlBodyV2 => _htmlBodyV2;
  set htmlBodyV2(Null? htmlBodyV2) => _htmlBodyV2 = htmlBodyV2;

  ProductJson.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _bodyHtml = json['body_html'];
    _vendor = json['vendor'];
    _productType = json['product_type'];
    _createdAt = json['created_at'];
    _handle = json['handle'];
    _updatedAt = json['updated_at'];
    _publishedAt = json['published_at'];
    _templateSuffix = json['template_suffix'];
    _status = json['status'];
    _publishedScope = json['published_scope'];
    _tags = json['tags'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    if (json['variants'] != null) {
      _variants = <Variants>[];
      json['variants'].forEach((v) {
        _variants!.add(new Variants.fromJson(v));
      });
    }
    if (json['options'] != null) {
      _options = <Options>[];
      json['options'].forEach((v) {
        _options!.add(new Options.fromJson(v));
      });
    }
    _image = json['image'] != null ? new Image1.fromJson(json['image']) : null;
    _sugarType = json['sugar_type'];
    if (json['sugar_options'] != null) {
      _sugarOptions = <SugarOptions>[];
      json['sugar_options'].forEach((v) {
        _sugarOptions!.add(new SugarOptions.fromJson(v));
      });
    }
    _youtubeId = json['youtube_id'];

    _htmlBodyV2 = json['html_body_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['body_html'] = this._bodyHtml;
    data['vendor'] = this._vendor;
    data['product_type'] = this._productType;
    data['created_at'] = this._createdAt;
    data['handle'] = this._handle;
    data['updated_at'] = this._updatedAt;
    data['published_at'] = this._publishedAt;
    data['template_suffix'] = this._templateSuffix;
    data['status'] = this._status;
    data['published_scope'] = this._publishedScope;
    data['tags'] = this._tags;
    data['admin_graphql_api_id'] = this._adminGraphqlApiId;
    if (this._variants != null) {
      data['variants'] = this._variants!.map((v) => v.toJson()).toList();
    }
    if (this._options != null) {
      data['options'] = this._options!.map((v) => v.toJson()).toList();
    }
    if (this._image != null) {
      data['image'] = this._image!.toJson();
    }
    data['sugar_type'] = this._sugarType;
    if (this._sugarOptions != null) {
      data['sugar_options'] =
          this._sugarOptions!.map((v) => v.toJson()).toList();
    }
    data['youtube_id'] = this._youtubeId;

    data['html_body_v2'] = this._htmlBodyV2;
    return data;
  }
}

class Variants {
  int? _id;
  int? _productId;
  String? _title;
  String? _price;
  String? _sku;
  int? _position;
  String? _inventoryPolicy;
  String? _compareAtPrice;
  String? _fulfillmentService;
  String? _inventoryManagement;
  String? _option1;
  Null? _option2;
  Null? _option3;
  String? _createdAt;
  String? _updatedAt;
  bool? _taxable;
  String? _barcode;
  int? _grams;
  int? _imageId;
  double? _weight;
  String? _weightUnit;
  int? _inventoryItemId;
  int? _inventoryQuantity;
  int? _oldInventoryQuantity;
  bool? _requiresShipping;
  String? _adminGraphqlApiId;
  String? _dispatchDate;
  String? _dispatchLabel;
  bool? _isSelected;
  int? _variantId;
  List<Null>? _images;
  String? _handle;
  int? _swatchType;
  String? _hexCode;
  String? _swatchUrl;
  List<Null>? _offers;
  bool? _freeShipping;

  Variants(
      {int? id,
      int? productId,
      String? title,
      String? price,
      String? sku,
      int? position,
      String? inventoryPolicy,
      String? compareAtPrice,
      String? fulfillmentService,
      String? inventoryManagement,
      String? option1,
      Null? option2,
      Null? option3,
      String? createdAt,
      String? updatedAt,
      bool? taxable,
      String? barcode,
      int? grams,
      int? imageId,
      double? weight,
      String? weightUnit,
      int? inventoryItemId,
      int? inventoryQuantity,
      int? oldInventoryQuantity,
      bool? requiresShipping,
      String? adminGraphqlApiId,
      String? dispatchDate,
      String? dispatchLabel,
      bool? isSelected,
      int? variantId,
      List<Null>? images,
      String? handle,
      int? swatchType,
      String? hexCode,
      String? swatchUrl,
      List<Null>? offers,
      bool? freeShipping}) {
    if (id != null) {
      this._id = id;
    }
    if (productId != null) {
      this._productId = productId;
    }
    if (title != null) {
      this._title = title;
    }
    if (price != null) {
      this._price = price;
    }
    if (sku != null) {
      this._sku = sku;
    }
    if (position != null) {
      this._position = position;
    }
    if (inventoryPolicy != null) {
      this._inventoryPolicy = inventoryPolicy;
    }
    if (compareAtPrice != null) {
      this._compareAtPrice = compareAtPrice;
    }
    if (fulfillmentService != null) {
      this._fulfillmentService = fulfillmentService;
    }
    if (inventoryManagement != null) {
      this._inventoryManagement = inventoryManagement;
    }
    if (option1 != null) {
      this._option1 = option1;
    }
    if (option2 != null) {
      this._option2 = option2;
    }
    if (option3 != null) {
      this._option3 = option3;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (taxable != null) {
      this._taxable = taxable;
    }
    if (barcode != null) {
      this._barcode = barcode;
    }
    if (grams != null) {
      this._grams = grams;
    }
    if (imageId != null) {
      this._imageId = imageId;
    }
    if (weight != null) {
      this._weight = weight;
    }
    if (weightUnit != null) {
      this._weightUnit = weightUnit;
    }
    if (inventoryItemId != null) {
      this._inventoryItemId = inventoryItemId;
    }
    if (inventoryQuantity != null) {
      this._inventoryQuantity = inventoryQuantity;
    }
    if (oldInventoryQuantity != null) {
      this._oldInventoryQuantity = oldInventoryQuantity;
    }
    if (requiresShipping != null) {
      this._requiresShipping = requiresShipping;
    }
    if (adminGraphqlApiId != null) {
      this._adminGraphqlApiId = adminGraphqlApiId;
    }
    if (dispatchDate != null) {
      this._dispatchDate = dispatchDate;
    }
    if (dispatchLabel != null) {
      this._dispatchLabel = dispatchLabel;
    }
    if (isSelected != null) {
      this._isSelected = isSelected;
    }
    if (variantId != null) {
      this._variantId = variantId;
    }
    if (images != null) {
      this._images = images;
    }
    if (handle != null) {
      this._handle = handle;
    }
    if (swatchType != null) {
      this._swatchType = swatchType;
    }
    if (hexCode != null) {
      this._hexCode = hexCode;
    }
    if (swatchUrl != null) {
      this._swatchUrl = swatchUrl;
    }
    if (offers != null) {
      this._offers = offers;
    }
    if (freeShipping != null) {
      this._freeShipping = freeShipping;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get productId => _productId;
  set productId(int? productId) => _productId = productId;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get price => _price;
  set price(String? price) => _price = price;
  String? get sku => _sku;
  set sku(String? sku) => _sku = sku;
  int? get position => _position;
  set position(int? position) => _position = position;
  String? get inventoryPolicy => _inventoryPolicy;
  set inventoryPolicy(String? inventoryPolicy) =>
      _inventoryPolicy = inventoryPolicy;
  String? get compareAtPrice => _compareAtPrice;
  set compareAtPrice(String? compareAtPrice) =>
      _compareAtPrice = compareAtPrice;
  String? get fulfillmentService => _fulfillmentService;
  set fulfillmentService(String? fulfillmentService) =>
      _fulfillmentService = fulfillmentService;
  String? get inventoryManagement => _inventoryManagement;
  set inventoryManagement(String? inventoryManagement) =>
      _inventoryManagement = inventoryManagement;
  String? get option1 => _option1;
  set option1(String? option1) => _option1 = option1;
  Null? get option2 => _option2;
  set option2(Null? option2) => _option2 = option2;
  Null? get option3 => _option3;
  set option3(Null? option3) => _option3 = option3;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  bool? get taxable => _taxable;
  set taxable(bool? taxable) => _taxable = taxable;
  String? get barcode => _barcode;
  set barcode(String? barcode) => _barcode = barcode;
  int? get grams => _grams;
  set grams(int? grams) => _grams = grams;
  int? get imageId => _imageId;
  set imageId(int? imageId) => _imageId = imageId;
  double? get weight => _weight;
  set weight(double? weight) => _weight = weight;
  String? get weightUnit => _weightUnit;
  set weightUnit(String? weightUnit) => _weightUnit = weightUnit;
  int? get inventoryItemId => _inventoryItemId;
  set inventoryItemId(int? inventoryItemId) =>
      _inventoryItemId = inventoryItemId;
  int? get inventoryQuantity => _inventoryQuantity;
  set inventoryQuantity(int? inventoryQuantity) =>
      _inventoryQuantity = inventoryQuantity;
  int? get oldInventoryQuantity => _oldInventoryQuantity;
  set oldInventoryQuantity(int? oldInventoryQuantity) =>
      _oldInventoryQuantity = oldInventoryQuantity;
  bool? get requiresShipping => _requiresShipping;
  set requiresShipping(bool? requiresShipping) =>
      _requiresShipping = requiresShipping;
  String? get adminGraphqlApiId => _adminGraphqlApiId;
  set adminGraphqlApiId(String? adminGraphqlApiId) =>
      _adminGraphqlApiId = adminGraphqlApiId;
  String? get dispatchDate => _dispatchDate;
  set dispatchDate(String? dispatchDate) => _dispatchDate = dispatchDate;
  String? get dispatchLabel => _dispatchLabel;
  set dispatchLabel(String? dispatchLabel) => _dispatchLabel = dispatchLabel;
  bool? get isSelected => _isSelected;
  set isSelected(bool? isSelected) => _isSelected = isSelected;
  int? get variantId => _variantId;
  set variantId(int? variantId) => _variantId = variantId;
  List<Null>? get images => _images;
  set images(List<Null>? images) => _images = images;
  String? get handle => _handle;
  set handle(String? handle) => _handle = handle;
  int? get swatchType => _swatchType;
  set swatchType(int? swatchType) => _swatchType = swatchType;
  String? get hexCode => _hexCode;
  set hexCode(String? hexCode) => _hexCode = hexCode;
  String? get swatchUrl => _swatchUrl;
  set swatchUrl(String? swatchUrl) => _swatchUrl = swatchUrl;
  List<Null>? get offers => _offers;
  set offers(List<Null>? offers) => _offers = offers;
  bool? get freeShipping => _freeShipping;
  set freeShipping(bool? freeShipping) => _freeShipping = freeShipping;

  Variants.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _title = json['title'];
    _price = json['price'];
    _sku = json['sku'];
    _position = json['position'];
    _inventoryPolicy = json['inventory_policy'];
    _compareAtPrice = json['compare_at_price'];
    _fulfillmentService = json['fulfillment_service'];
    _inventoryManagement = json['inventory_management'];
    _option1 = json['option1'];
    _option2 = json['option2'];
    _option3 = json['option3'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _taxable = json['taxable'];
    _barcode = json['barcode'];
    _grams = json['grams'];
    _imageId = json['image_id'];
    _weightUnit = json['weight_unit'];
    _inventoryQuantity = json['inventory_quantity'];
    _oldInventoryQuantity = json['old_inventory_quantity'];
    _requiresShipping = json['requires_shipping'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    _dispatchDate = json['dispatch_date'];
    _dispatchLabel = json['dispatch_label'];
    _isSelected = json['isSelected'];
    _variantId = json['variant_id'];

    _handle = json['handle'];
    _swatchType = json['swatch_type'];
    _hexCode = json['hexCode'];
    _swatchUrl = json['swatch_url'];

    _freeShipping = json['free_shipping'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['title'] = this._title;
    data['price'] = this._price;
    data['sku'] = this._sku;
    data['position'] = this._position;
    data['inventory_policy'] = this._inventoryPolicy;
    data['compare_at_price'] = this._compareAtPrice;
    data['fulfillment_service'] = this._fulfillmentService;
    data['inventory_management'] = this._inventoryManagement;
    data['option1'] = this._option1;
    data['option2'] = this._option2;
    data['option3'] = this._option3;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['taxable'] = this._taxable;
    data['barcode'] = this._barcode;
    data['grams'] = this._grams;
    data['image_id'] = this._imageId;
    data['weight'] = this._weight;
    data['weight_unit'] = this._weightUnit;
    data['inventory_item_id'] = this._inventoryItemId;
    data['inventory_quantity'] = this._inventoryQuantity;
    data['old_inventory_quantity'] = this._oldInventoryQuantity;
    data['requires_shipping'] = this._requiresShipping;
    data['admin_graphql_api_id'] = this._adminGraphqlApiId;
    data['dispatch_date'] = this._dispatchDate;
    data['dispatch_label'] = this._dispatchLabel;
    data['isSelected'] = this._isSelected;
    data['variant_id'] = this._variantId;

    data['handle'] = this._handle;
    data['swatch_type'] = this._swatchType;
    data['hexCode'] = this._hexCode;
    data['swatch_url'] = this._swatchUrl;

    data['free_shipping'] = this._freeShipping;
    return data;
  }
}

class Options {
  int? _id;
  int? _productId;
  String? _name;
  int? _position;
  List<String>? _values;

  Options(
      {int? id,
      int? productId,
      String? name,
      int? position,
      List<String>? values}) {
    if (id != null) {
      this._id = id;
    }
    if (productId != null) {
      this._productId = productId;
    }
    if (name != null) {
      this._name = name;
    }
    if (position != null) {
      this._position = position;
    }
    if (values != null) {
      this._values = values;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get productId => _productId;
  set productId(int? productId) => _productId = productId;
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get position => _position;
  set position(int? position) => _position = position;
  List<String>? get values => _values;
  set values(List<String>? values) => _values = values;

  Options.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _name = json['name'];
    _position = json['position'];
    _values = json['values'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['name'] = this._name;
    data['position'] = this._position;
    data['values'] = this._values;
    return data;
  }
}

class Image1 {
  int? _id;
  int? _productId;
  int? _position;
  String? _createdAt;
  String? _updatedAt;
  String? _alt;
  int? _width;
  int? _height;
  String? _src;
  List<int>? _variantIds;
  String? _adminGraphqlApiId;

  Image1(
      {int? id,
      int? productId,
      int? position,
      String? createdAt,
      String? updatedAt,
      String? alt,
      int? width,
      int? height,
      String? src,
      List<int>? variantIds,
      String? adminGraphqlApiId}) {
    if (id != null) {
      this._id = id;
    }
    if (productId != null) {
      this._productId = productId;
    }
    if (position != null) {
      this._position = position;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (alt != null) {
      this._alt = alt;
    }
    if (width != null) {
      this._width = width;
    }
    if (height != null) {
      this._height = height;
    }
    if (src != null) {
      this._src = src;
    }
    if (variantIds != null) {
      this._variantIds = variantIds;
    }
    if (adminGraphqlApiId != null) {
      this._adminGraphqlApiId = adminGraphqlApiId;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get productId => _productId;
  set productId(int? productId) => _productId = productId;
  int? get position => _position;
  set position(int? position) => _position = position;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get alt => _alt;
  set alt(String? alt) => _alt = alt;
  int? get width => _width;
  set width(int? width) => _width = width;
  int? get height => _height;
  set height(int? height) => _height = height;
  String? get src => _src;
  set src(String? src) => _src = src;
  List<int>? get variantIds => _variantIds;
  set variantIds(List<int>? variantIds) => _variantIds = variantIds;
  String? get adminGraphqlApiId => _adminGraphqlApiId;
  set adminGraphqlApiId(String? adminGraphqlApiId) =>
      _adminGraphqlApiId = adminGraphqlApiId;

  Image1.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _position = json['position'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _alt = json['alt'];
    _width = json['width'];
    _height = json['height'];
    _src = json['src'];
    _variantIds = json['variant_ids'].cast<int>();
    _adminGraphqlApiId = json['admin_graphql_api_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['position'] = this._position;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['alt'] = this._alt;
    data['width'] = this._width;
    data['height'] = this._height;
    data['src'] = this._src;
    data['variant_ids'] = this._variantIds;
    data['admin_graphql_api_id'] = this._adminGraphqlApiId;
    return data;
  }
}

class SugarOptions {
  String? _title;
  int? _swatch;
  List<Products>? _products;

  SugarOptions({String? title, int? swatch, List<Products>? products}) {
    if (title != null) {
      this._title = title;
    }
    if (swatch != null) {
      this._swatch = swatch;
    }
    if (products != null) {
      this._products = products;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  int? get swatch => _swatch;
  set swatch(int? swatch) => _swatch = swatch;
  List<Products>? get products => _products;
  set products(List<Products>? products) => _products = products;

  SugarOptions.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _swatch = json['swatch'];
    if (json['products'] != null) {
      _products = <Products>[];
      json['products'].forEach((v) {
        _products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['swatch'] = this._swatch;
    if (this._products != null) {
      data['products'] = this._products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? _id;
  int? _productId;
  String? _title;
  String? _price;
  String? _sku;
  int? _position;
  String? _inventoryPolicy;
  String? _compareAtPrice;
  String? _fulfillmentService;
  String? _inventoryManagement;
  String? _option1;
  Null? _option2;
  Null? _option3;
  String? _createdAt;
  String? _updatedAt;
  bool? _taxable;
  String? _barcode;
  int? _grams;
  int? _imageId;
  double? _weight;
  String? _weightUnit;
  int? _inventoryItemId;
  int? _inventoryQuantity;
  int? _oldInventoryQuantity;
  bool? _requiresShipping;
  String? _adminGraphqlApiId;
  bool? _isSelected;
  String? _parentTitle;
  int? _swatchType;
  String? _hexCode;
  String? _swatchUrl;
  List<String>? _images;
  String? _dispatchDate;
  String? _dispatchLabel;
  int? _variantId;
  String? _handle;
  bool? _freeShipping;

  Products(
      {int? id,
      int? productId,
      String? title,
      String? price,
      String? sku,
      int? position,
      String? inventoryPolicy,
      String? compareAtPrice,
      String? fulfillmentService,
      String? inventoryManagement,
      String? option1,
      Null? option2,
      Null? option3,
      String? createdAt,
      String? updatedAt,
      bool? taxable,
      String? barcode,
      int? grams,
      int? imageId,
      double? weight,
      String? weightUnit,
      int? inventoryItemId,
      int? inventoryQuantity,
      int? oldInventoryQuantity,
      bool? requiresShipping,
      String? adminGraphqlApiId,
      bool? isSelected,
      String? parentTitle,
      int? swatchType,
      String? hexCode,
      String? swatchUrl,
      List<String>? images,
      String? dispatchDate,
      String? dispatchLabel,
      int? variantId,
      String? handle,
      bool? freeShipping}) {
    if (id != null) {
      this._id = id;
    }
    if (productId != null) {
      this._productId = productId;
    }
    if (title != null) {
      this._title = title;
    }
    if (price != null) {
      this._price = price;
    }
    if (sku != null) {
      this._sku = sku;
    }
    if (position != null) {
      this._position = position;
    }
    if (inventoryPolicy != null) {
      this._inventoryPolicy = inventoryPolicy;
    }
    if (compareAtPrice != null) {
      this._compareAtPrice = compareAtPrice;
    }
    if (fulfillmentService != null) {
      this._fulfillmentService = fulfillmentService;
    }
    if (inventoryManagement != null) {
      this._inventoryManagement = inventoryManagement;
    }
    if (option1 != null) {
      this._option1 = option1;
    }
    if (option2 != null) {
      this._option2 = option2;
    }
    if (option3 != null) {
      this._option3 = option3;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (taxable != null) {
      this._taxable = taxable;
    }
    if (barcode != null) {
      this._barcode = barcode;
    }
    if (grams != null) {
      this._grams = grams;
    }
    if (imageId != null) {
      this._imageId = imageId;
    }
    if (weight != null) {
      this._weight = weight;
    }
    if (weightUnit != null) {
      this._weightUnit = weightUnit;
    }
    if (inventoryItemId != null) {
      this._inventoryItemId = inventoryItemId;
    }
    if (inventoryQuantity != null) {
      this._inventoryQuantity = inventoryQuantity;
    }
    if (oldInventoryQuantity != null) {
      this._oldInventoryQuantity = oldInventoryQuantity;
    }
    if (requiresShipping != null) {
      this._requiresShipping = requiresShipping;
    }
    if (adminGraphqlApiId != null) {
      this._adminGraphqlApiId = adminGraphqlApiId;
    }
    if (isSelected != null) {
      this._isSelected = isSelected;
    }
    if (parentTitle != null) {
      this._parentTitle = parentTitle;
    }
    if (swatchType != null) {
      this._swatchType = swatchType;
    }
    if (hexCode != null) {
      this._hexCode = hexCode;
    }
    if (swatchUrl != null) {
      this._swatchUrl = swatchUrl;
    }
    if (images != null) {
      this._images = images;
    }
    if (dispatchDate != null) {
      this._dispatchDate = dispatchDate;
    }
    if (dispatchLabel != null) {
      this._dispatchLabel = dispatchLabel;
    }
    if (variantId != null) {
      this._variantId = variantId;
    }
    if (handle != null) {
      this._handle = handle;
    }
    if (freeShipping != null) {
      this._freeShipping = freeShipping;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get productId => _productId;
  set productId(int? productId) => _productId = productId;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get price => _price;
  set price(String? price) => _price = price;
  String? get sku => _sku;
  set sku(String? sku) => _sku = sku;
  int? get position => _position;
  set position(int? position) => _position = position;
  String? get inventoryPolicy => _inventoryPolicy;
  set inventoryPolicy(String? inventoryPolicy) =>
      _inventoryPolicy = inventoryPolicy;
  String? get compareAtPrice => _compareAtPrice;
  set compareAtPrice(String? compareAtPrice) =>
      _compareAtPrice = compareAtPrice;
  String? get fulfillmentService => _fulfillmentService;
  set fulfillmentService(String? fulfillmentService) =>
      _fulfillmentService = fulfillmentService;
  String? get inventoryManagement => _inventoryManagement;
  set inventoryManagement(String? inventoryManagement) =>
      _inventoryManagement = inventoryManagement;
  String? get option1 => _option1;
  set option1(String? option1) => _option1 = option1;
  Null? get option2 => _option2;
  set option2(Null? option2) => _option2 = option2;
  Null? get option3 => _option3;
  set option3(Null? option3) => _option3 = option3;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  bool? get taxable => _taxable;
  set taxable(bool? taxable) => _taxable = taxable;
  String? get barcode => _barcode;
  set barcode(String? barcode) => _barcode = barcode;
  int? get grams => _grams;
  set grams(int? grams) => _grams = grams;
  int? get imageId => _imageId;
  set imageId(int? imageId) => _imageId = imageId;
  double? get weight => _weight;
  set weight(double? weight) => _weight = weight;
  String? get weightUnit => _weightUnit;
  set weightUnit(String? weightUnit) => _weightUnit = weightUnit;
  int? get inventoryItemId => _inventoryItemId;
  set inventoryItemId(int? inventoryItemId) =>
      _inventoryItemId = inventoryItemId;
  int? get inventoryQuantity => _inventoryQuantity;
  set inventoryQuantity(int? inventoryQuantity) =>
      _inventoryQuantity = inventoryQuantity;
  int? get oldInventoryQuantity => _oldInventoryQuantity;
  set oldInventoryQuantity(int? oldInventoryQuantity) =>
      _oldInventoryQuantity = oldInventoryQuantity;
  bool? get requiresShipping => _requiresShipping;
  set requiresShipping(bool? requiresShipping) =>
      _requiresShipping = requiresShipping;
  String? get adminGraphqlApiId => _adminGraphqlApiId;
  set adminGraphqlApiId(String? adminGraphqlApiId) =>
      _adminGraphqlApiId = adminGraphqlApiId;
  bool? get isSelected => _isSelected;
  set isSelected(bool? isSelected) => _isSelected = isSelected;
  String? get parentTitle => _parentTitle;
  set parentTitle(String? parentTitle) => _parentTitle = parentTitle;
  int? get swatchType => _swatchType;
  set swatchType(int? swatchType) => _swatchType = swatchType;
  String? get hexCode => _hexCode;
  set hexCode(String? hexCode) => _hexCode = hexCode;
  String? get swatchUrl => _swatchUrl;
  set swatchUrl(String? swatchUrl) => _swatchUrl = swatchUrl;
  List<String>? get images => _images;
  set images(List<String>? images) => _images = images;
  String? get dispatchDate => _dispatchDate;
  set dispatchDate(String? dispatchDate) => _dispatchDate = dispatchDate;
  String? get dispatchLabel => _dispatchLabel;
  set dispatchLabel(String? dispatchLabel) => _dispatchLabel = dispatchLabel;
  int? get variantId => _variantId;
  set variantId(int? variantId) => _variantId = variantId;
  String? get handle => _handle;
  set handle(String? handle) => _handle = handle;
  bool? get freeShipping => _freeShipping;
  set freeShipping(bool? freeShipping) => _freeShipping = freeShipping;

  Products.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _title = json['title'];
    _price = json['price'];
    _sku = json['sku'];
    _position = json['position'];
    _inventoryPolicy = json['inventory_policy'];
    _compareAtPrice = json['compare_at_price'];
    _fulfillmentService = json['fulfillment_service'];
    _inventoryManagement = json['inventory_management'];
    _option1 = json['option1'];
    _option2 = json['option2'];
    _option3 = json['option3'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _taxable = json['taxable'];
    _barcode = json['barcode'];
    _grams = json['grams'];
    _imageId = json['image_id'];
    _weightUnit = json['weight_unit'];
    _inventoryItemId = json['inventory_item_id'];
    _inventoryQuantity = json['inventory_quantity'];
    _oldInventoryQuantity = json['old_inventory_quantity'];
    _requiresShipping = json['requires_shipping'];
    _adminGraphqlApiId = json['admin_graphql_api_id'];
    _isSelected = json['isSelected'];
    _parentTitle = json['parent_title'];
    _swatchType = json['swatch_type'];
    _hexCode = json['hexCode'];
    _swatchUrl = json['swatch_url'];
    _images = json['images'].cast<String>();
    _dispatchDate = json['dispatch_date'];
    _dispatchLabel = json['dispatch_label'];
    _variantId = json['variant_id'];
    _handle = json['handle'];
    _freeShipping = json['free_shipping'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['title'] = this._title;
    data['price'] = this._price;
    data['sku'] = this._sku;
    data['position'] = this._position;
    data['inventory_policy'] = this._inventoryPolicy;
    data['compare_at_price'] = this._compareAtPrice;
    data['fulfillment_service'] = this._fulfillmentService;
    data['inventory_management'] = this._inventoryManagement;
    data['option1'] = this._option1;
    data['option2'] = this._option2;
    data['option3'] = this._option3;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['taxable'] = this._taxable;
    data['barcode'] = this._barcode;
    data['grams'] = this._grams;
    data['image_id'] = this._imageId;
    data['weight'] = this._weight;
    data['weight_unit'] = this._weightUnit;
    data['inventory_item_id'] = this._inventoryItemId;
    data['inventory_quantity'] = this._inventoryQuantity;
    data['old_inventory_quantity'] = this._oldInventoryQuantity;
    data['requires_shipping'] = this._requiresShipping;
    data['admin_graphql_api_id'] = this._adminGraphqlApiId;
    data['isSelected'] = this._isSelected;
    data['parent_title'] = this._parentTitle;
    data['swatch_type'] = this._swatchType;
    data['hexCode'] = this._hexCode;
    data['swatch_url'] = this._swatchUrl;
    data['images'] = this._images;
    data['dispatch_date'] = this._dispatchDate;
    data['dispatch_label'] = this._dispatchLabel;
    data['variant_id'] = this._variantId;
    data['handle'] = this._handle;
    data['free_shipping'] = this._freeShipping;
    return data;
  }
}

class Rating {
  double? _average;
  int? _count;

  Rating({double? average, int? count}) {
    if (average != null) {
      this._average = average;
    }
    if (count != null) {
      this._count = count;
    }
  }

  double? get average => _average;
  set average(double? average) => _average = average;
  int? get count => _count;
  set count(int? count) => _count = count;

  Rating.fromJson(Map<String, dynamic> json) {
    _average = json['average'];
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['average'] = this._average;
    data['count'] = this._count;
    return data;
  }
}
