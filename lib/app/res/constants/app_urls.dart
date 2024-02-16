class AppUrl {
  //OneSignal URLS
  static const String oneSignalAppId = '83266692-a189-4e09-8622-8d186db9dbff';
  static const String baseApiUrl = 'http://192.168.17.49:3000/api';
  static const String ctlTgLink = 'https://t.me/cointoplist';
  static const String baseLogoApiUrl = 'http://192.168.17.49:3000/uploads';
  static const String logoUrl = 'http://192.168.17.49:3000/uploads';
  static const String appLogoUrl =
      'https://cointoplist.net/resources/frontend/new/img/logo.png';
  static const String partnershipLogoApiUrl = '$baseLogoApiUrl/partnership';
  static const String createUserApiUrl = '$baseApiUrl/users';
  static const String coinsApiUrl = '$baseApiUrl/coins';
  static const String findCoinApiUrl = '$coinsApiUrl/findCoin';
  static const String getCoinsNoPaginationApiUrl =
      '$coinsApiUrl/getAllCoinsNoPagination';
  static const String promotedCoinsApiUrl =
      '$baseApiUrl/coins/getPromotedCoins';
  static const String postVote = '$baseApiUrl/votes/';
  static const String mailServiceApiUrl = '$baseApiUrl/mail_service/';
  static const String telegramShillServiceApiUrl =
      '$baseApiUrl/telegram_shill_service/';
  static const String telegramDmServiceApiUrl =
      '$baseApiUrl/telegram_dm_service/';
  static const String promoteServiceApiUrl = '$baseApiUrl/promote_service/';
  static const String addToWatchListUrl = '$coinsApiUrl/add_watch_list/';
  static const String bannerApiUrl = '$baseApiUrl/banner/';
  static const String removeFromWatchListUrl =
      '$coinsApiUrl/remove_watch_list/';
  static const String dyorApiUrl = '$baseApiUrl/dyor/';
  static const String disclaimerApiUrl = '$baseApiUrl/disclaimer/';
  static const String privacyApiUrl = '$baseApiUrl/privacy/';
  static const String termsApiUrl = '$baseApiUrl/terms/';
  static const String partnershipApiUrl = '$baseApiUrl/partnership/';
  static const String getAllApprovedCoinsWithPaginationUrl =
      '$coinsApiUrl/getAllCoinsWithPagination';
  static const String getPromotedCoinsWithPaginationUrl =
      '$coinsApiUrl/getPromotedCoinsWithPagination';
}
