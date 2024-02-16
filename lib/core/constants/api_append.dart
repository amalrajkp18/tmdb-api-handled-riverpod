class ApiAppend {
  //base url tmdb
  static const String baseUrl = 'https://api.themoviedb.org/3/';

  // api key tmdb
  static const String apiKey = r'?api_key=8d55938bbc74db08ca5fd0300adc5f46';

  // image appends
  static const String imageUrl = 'https://image.tmdb.org/t/p/w500/';

  // acces tik
  static const String accesToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZDU1OTM4YmJjNzRkYjA4Y2E1ZmQwMzAwYWRjNWY0NiIsInN1YiI6IjYyYmFhZmZhMTdiNWVmMDRlNmIyOTkwZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.vEmu2kfDY7jV3E3qWsAhQQkJS8_RTBnWdwPLcOwcYCs';

  // popular movie url
  static const String popularMovieUrl = 'movie/top_rated?language=en-US';
  // nowplaying movie url
  static const String nowPlayingMovieUrl = 'movie/now_playing?language=en-US';
  //upcoming movie
  static const String upcomingMovieUrl = 'movie/upcoming?language=en-US';
}
