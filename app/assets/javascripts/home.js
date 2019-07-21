$timetabs = $('.timebox');
$abox = $('#answerbox');
$('.tabbox').hide();
$('.toptabbox').show();


$('.tabbox').add($('a').find('.tabbox')).on('mouseover', function(event) {
	$(event.target).addClass('hoverbox');
	$(event.target).siblings().add($(event.target).siblings().find('.tabbox')).add(event.target).show();
});

$('.tabbox:not(.toptabbox)').on('mouseout', function(event) {
	$(event.target).removeClass('hoverbox');
	var removeDelay = window.setTimeout(function() {
	$(event.target).parents('.menubox').find('.tabbox:not(.toptabbox)').hide();
}, 200);
	$(event.target).add($(event.target).parents('.menubox').find('.tabbox')).on('mouseover', function() {
	window.clearTimeout(removeDelay)
	});
});
$('.toptabbox').on('mouseout', function(event) {
	$(event.target).removeClass('hoverbox');
	var removeTopDelay = window.setTimeout(function() {
	$(event.target).siblings().hide();
	}, 200);
	$(event.target).add($(event.target).siblings()).on('mouseover', function() {
	window.clearTimeout(removeTopDelay)
	});
});

function loadTimeData(timestring) {
var xhr = new XMLHttpRequest();
$abox.html('');
xhr.onload = function () {
	var timeData = JSON.parse(xhr.responseText);
	var weekstring = '';
	
	$(timeData).each(function(){
		weekstring += this.title + '<br>'
	});
	$abox.append(weekstring);
};
xhr.open('GET', 'search/' + timestring + '.json', true);
xhr.send(null);
};
$('#monthnotices').on('click', function() {
	loadTimeData("lastmonth")
});
$('#weeknotices').on('click', function() {
	loadTimeData("lastweek")
});
$('#firsttab').on('click', function() {
	loadTimeData("alltime")
});

$timetabs.on('click', function(event) {
	$timetabs.each(function() {
	if ($(this).hasClass('clickedtimebox')) {
	$(this).removeClass('clickedtimebox');
	};
	});
	$(event.target).addClass('clickedtimebox');
});
