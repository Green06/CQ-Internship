const movie = [
    {
      "MovieName": "The Great Adventure",
      "ActorName": "John Smith",
      "ReleaseDate": "2023-01-15"
    },
    {
      "MovieName": "Mystery in the Woods",
      "ActorName": "Emily Johnson",
      "ReleaseDate": "2022-09-28"
    },
    {
      "MovieName": "Love and Destiny",
      "ActorName": "Michael Brown",
      "ReleaseDate": "2023-05-02"
    },
    {
      "MovieName": "City of Shadows",
      "ActorName": "Sophia Williams",
      "ReleaseDate": "2023-03-12"
    },
    {
      "MovieName": "The Last Stand",
      "ActorName": "William Davis",
      "ReleaseDate": "2022-11-07"
    },
    {
      "MovieName": "Echoes of Time",
      "ActorName": "Olivia Wilson",
      "ReleaseDate": "2022-12-19"
    }
  ];
  //11
  const distinctActorNamesCount = new Set(movie.map(movie => movie.ActorName)).size;

  console.log("Count " + distinctActorNamesCount);


  //12
let updatedMovies = movie.find(movie => movie.MovieName !== "The Last Stand");

console.log(updatedMovies);
  

//13
const allReleasedAfter2021Dec31 = movie.every(movie => new Date(movie.ReleaseDate) > new Date('2021-12-31'));

console.log(allReleasedAfter2021Dec31);

//15

const GreaterThan10 = movie.filter(movie => movie.MovieName.length > 10).map(movie => movie.MovieName);

console.log(GreaterThan10);