martel = Author.create({first_name:"Yann", last_name:"Martel", year_born: 1963, year_died: :nill, image: "http://www.cbc.ca/books/arts_booker-best-2_220v.jpg"})
chabon = Author.create({first_name:"Michael", last_name:"Chabon", year_born: 1963, year_died: :nill, image: "http://www.newyorker.com/wp-content/uploads/2012/09/chabon.jpg"})
kingsolver = Author.create({first_name:"Barbara", last_name:"Kingsolver", year_born: 1955, year_died: :nill, image: "http://s3.amazonaws.com/media.wbur.org/wordpress/11/files/2012/11/1109_butterflies-author.jpg"})
fitzgerald = Author.create({first_name:"F. Scott", last_name:"Fitzgerald", year_born: 1896, year_died: 1940, image: "https://d.gr-assets.com/authors/1427040571p8/3190.jpg"})
orwell = Author.create({first_name:"George", last_name:"Orwell", year_born: 1903, year_died: 1950, image: "https://upload.wikimedia.org/wikipedia/commons/7/7a/George-orwell-BBC.jpg"})
diaz = orwell = Author.create({first_name:"Junot", last_name:"Diaz", year_born: 1968, year_died: :nill, image: "http://news.mit.edu/sites/mit.edu.newsoffice/files/images/2012/20120910092107-0_0.jpg"})

pi = Book.create({title: "Life of Pi", release_year: 2001, image: "https://upload.wikimedia.org/wikipedia/en/4/45/Life_of_Pi_cover.png"})
kavalier = Book.create({title: "The Amazing Adventures of Kavalier & Clay", release_year: 2000, image: "http://3.bp.blogspot.com/-6atNHO5r2pk/VOzrkEUrLAI/AAAAAAAAA60/7lUKDlv0IIw/s1600/gal-book-amazing-adventures-of-kavalier-and-clay-jpg.jpg"})
poisonwood = Book.create({title: "The Poisonwood Bible", release_year: 1998, image: "https://upload.wikimedia.org/wikipedia/en/7/79/Poisonwood_Bible.jpg"})
gatsby = Book.create({title: "The Great Gatsby", release_year: 1925, image: "http://a5.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_300/MTI5MzY0OTk4NTM0MjQwNzM0.jpg"})
oscar_wao = Book.create({title: "The Brief Wonderous Life of Oscar Wao", release_year: 2007, image: "http://pictures.abebooks.com/isbn/9781594483592-us-300.jpg"})
lose_her = Book.create({title: "This Is How You Lose Her", release_year: 2012, image: "https://upload.wikimedia.org/wikipedia/en/a/a3/Original_cover_of_This_is_How_You_Lose_Her.jpg"})
summer = Book.create({title: "Prodigal Summer", release_year: 2000, image: "http://ecx.images-amazon.com/images/I/51habVcrqdL._SX316_BO1,204,203,200_.jpg"})
bean_trees = Book.create({title: "The Bean Trees", release_year: 1988, image: "http://d.gr-assets.com/books/1443483961l/30868.jpg"})
wonder_boys = Book.create({title: "Wonder Boys", release_year: 1995, image: "http://ecx.images-amazon.com/images/I/51iR93jD2uL.jpg"})

martel.books << pi
chabon.books << [kavalier, wonder_boys]
kingsolver.books << [poisonwood, summer, bean_trees]
fitzgerald.books << gatsby
diaz.books << [oscar_wao, lose_her]
