$('.Obscene').on('click', function(event){
	$(event.target).toggleClass('Obscene-report');
	$(event.target).toggleClass('Obscene-unreported');
});

$('.Abuse').on('click', function(event) {
	$(event.target).toggleClass('Abuse-report');
	$(event.target).toggleClass('Abuse-unreported');
});

$('.Illegal').on('click', function(event) {
	$(event.target).toggleClass('Illegal-report');
	$(event.target).toggleClass('Illegal-unreported');
});