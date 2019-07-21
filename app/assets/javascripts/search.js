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
$formcatname.on('change', updateForm);