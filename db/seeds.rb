
Category.create!([
  {name: "Technology", description: "The application of scientific knowledge for practical purposes, especially in industry."},
  {name: "Movies", description: "A story or event recorded by a camera as a set of moving images and shown in a theater or on television; a motion picture."},
  {name: "Misc", description: "All articles that do not fint in to the other categories"}
])
PostType.create!([
  {name: "Standard", description: "A standard post with a linked article."},
  {name: "Self", description: "A self post without any main linked article."},
  {name: "Image", description: "A standard post with 1 picture."},
  {name: "Multiple Images", description: "A standard post with multiple pictures."},
  {name: "Video", description: "A standard post with video."}
])