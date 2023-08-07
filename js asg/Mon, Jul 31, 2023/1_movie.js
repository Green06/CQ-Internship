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
  ]


// const dateString=movie.map(x=>x.ReleaseDate)
// let datedate= dateString.forEach(item => new Date(item))
// console.log(datedate);

// let result1 = new date(result)
// let res = result1.getFullYear()
// console.log(res);

const filim = movie.filter(movie => new Date(movie.ReleaseDate).getFullYear()===2022);
console.log(filim);
filim.forEach(Elements =>{
   console.log(Elements.ActorName,Elements.MovieName) 
});



// var st = "2022-12-19"
// var dt = new Date(st);
// let re = dt.getFullYear()
// console.log(re)


