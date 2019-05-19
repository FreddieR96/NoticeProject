$formname = $('input:text');
$formcatname = $('select');

function updateForm() {
$formlabel = $formname.val();
$formcatlabel = $formcatname.val();
var formVar = window.setTimeout(function(){
	$.ajax({
		type: "GET",
		url: "/searchresults",
		data: { title: $formlabel, notecategory: $formcatlabel }
		});
}, 800);
$formname.on('keyup', function() {
	window.clearTimeout(formVar);
});
};
$formname.on('keyup', updateForm);
//$formcatname.on('change', formAjax);
//$formcatname.on('change', formAjax); 


/* function lastThreeAjax() {
$formdata = $formname.val();
$formdatalength = $formdata.length;
	$.ajax({
		type: "GET",
		url: "/last3",
		data: { zeform: $formdata, zeformlength: $formdatalength }
		});
	}; 
function showBox() {
	$('#returnbox').html('Voila');
};
$formname.on('keyup', lastThreeAjax); */