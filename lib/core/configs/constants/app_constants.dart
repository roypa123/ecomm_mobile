class AppConstants {
  static const String appName = "STORY TELLER APP";

  static const String baseURL = "http://103.12.1.151:8000";

  static String accessToken = "";

  //* ENDPOINTS
  static const String emailLogin = "/user/login";
  static const String emailSignup = "/user/signup";
  static const String forgotPassword = "/user/forgot-password";
  static const String otp = "/user/validateMail";
  static const String resend = "/user/resend";
  static const String createPassword = "/user/create-password";
  static const String resetPasswordVerification =
      "/user/reset-password-verification";
  static const String resetPassword = "/user/reset-password";
  static const String homeImage = "/image/home";
  static const String trendingNow = "/story/trending";
  static const String categoryList = "/category/list";
  static const String searchHistory = "/story/search?page=1&size=10&";
  static const String socialLogin = "/user/social-login";
  static const String shortStories = "/story/short-stories";
  static const String basicDetails = "/home/basic-detils";
  static const String categoryStories = "/home/category-stories";

  static const String deleteHistory = "/story/search/remove-history?";
  static const String wordSearch = "/story/search/";
  static const String readStory = "/story/view/";
  static const String createFavourite = "/favourite/createFavourite";
  static const String removeFavourite = "/favourite/delete/";
  static const String searchPost = "/story/search/history";

  static const String storyShorts = "story_shorts";
  static const String search = "search";
  static const String sinlgeStory = "story/view";

  static const String changePassword = "/user/change-password";
  static const String profileCreate = "/profile/create";
  static const String profileEdit = "/profile/edit/";
  static const String profileList = "/profile/list";
  static const String profileActivate = "/profile/activate/";
  static const String profileImages = "/profile/profile-images";
  static const String favouriteListing = "/favourite/list/";
  static const String profileScreen = "profilescreen";
  static const String customerSupport = "/profile/issues";
}
