const movie= [
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
<<<<<<< HEAD
  ]

let arr =[];
movieName = movie.forEach(x=>includes(x.MovieName.indexOf(movie)))
console.log(movieName)

=======
  ];
  
  let duplicate = false;
const movieNames = [];

movie.forEach(movies => {
  if (movieNames.includes(movies.MovieName)) {
    duplicate = true;
    return;
  }
  console.log(movieNames.push(movies.MovieName));
});
if (duplicate) {
  console.log("Duplicate movie ");
} else {
  console.log("No duplicate movie ");
}
>>>>>>> 18d62ce4053aaade3e9462cd9a9f10c5a3bbd127
