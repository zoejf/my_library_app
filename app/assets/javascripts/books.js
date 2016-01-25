$(function() {
	console.log("js works!");

	$('#sort-title').on('click', function (event) {
		event.target.classList.add("hidden");
		$('#sort-year').toggleClass("hidden");
		$('.books-sort-title').toggleClass("hidden");
		$('.books-sort-year').toggleClass("hidden");
	});
	$('#sort-year').on('click', function (event) {
		event.target.classList.add("hidden");
		$('#sort-title').toggleClass("hidden");
		$('.books-sort-title').toggleClass("hidden");
		$('.books-sort-year').toggleClass("hidden");
	});

});