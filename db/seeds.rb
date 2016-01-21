martel = Author.create({first_name:"Yann", last_name:"Martel", year_born: 1963, year_died: :nill, image: "http://www.cbc.ca/books/arts_booker-best-2_220v.jpg"})
chabon = Author.create({first_name:"Michael", last_name:"Chabon", year_born: 1963, year_died: :nill, image: "http://www.newyorker.com/wp-content/uploads/2012/09/chabon.jpg"})
kingsolver = Author.create({first_name:"Barbara", last_name:"Kingsolver", year_born: 1955, year_died: :nill, image: "http://s3.amazonaws.com/media.wbur.org/wordpress/11/files/2012/11/1109_butterflies-author.jpg"})
fitzgerald = Author.create({first_name:"F. Scott", last_name:"Fitzgerald", year_born: 1896, year_died: 1940, image: "https://d.gr-assets.com/authors/1427040571p8/3190.jpg"})

pi = Book.create({title: "Life of Pi", release_year: 2001, image: "https://upload.wikimedia.org/wikipedia/en/4/45/Life_of_Pi_cover.png"})
kavalier = Book.create({title: "The Amazing Adventures of Kavalier & Clay", release_year: 2000, image: "http://3.bp.blogspot.com/-6atNHO5r2pk/VOzrkEUrLAI/AAAAAAAAA60/7lUKDlv0IIw/s1600/gal-book-amazing-adventures-of-kavalier-and-clay-jpg.jpg"})
poisonwood = Book.create({title: "The Poisonwood Bible", release_year: 1998, image: "https://upload.wikimedia.org/wikipedia/en/7/79/Poisonwood_Bible.jpg"})
gatsby = Book.create({title: "The Great Gatsby", release_year: 1925, image: "http://a5.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_300/MTI5MzY0OTk4NTM0MjQwNzM0.jpg"})

martel.books << pi
chabon.books << kavalier
kingsolver.books << poisonwood
fitzgerald.books << gatsby

