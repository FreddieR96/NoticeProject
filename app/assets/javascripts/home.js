

function formAjax() {
$formlabel = $('#searchlabel').val();
$formcategory = $('#searchcategory').val();
	$.ajax() ({
		type: "GET",
		url: "/search",
		data: { title: $formlabel, notecategory: $formcategory },
		success: function() {
		$('#resultsbox').html('<%= render @searchresults %>');
		},
		error: function() {
		$('#resultsbox').html('An error occurred, please try again later.');
		}
	});
};

formVar = setTimeout(formAjax, 800);
function updateForm() {
	formVar();
	$(

		