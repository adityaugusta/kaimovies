const baseUrl = 'https://api.themoviedb.org/3';
const baseImageUrl = 'https://image.tmdb.org/t/p/w500';
const baseVideoYoutubeUrl = 'https://www.youtube.com/watch?v=';

String? getImageUrl(String? path) => path != null ? baseImageUrl + path : null;
