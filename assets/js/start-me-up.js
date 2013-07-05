$('#lookup').typeahead({
	source: function(q, process) {
		$.ajax({
			url: 'http://search.musicbrainz.org/ws/2/artist/',
			type: 'GET',
			data: {
				query: q,
				fmt: 'json',
				limit: 8
			},
			dataType: 'json',
			success: function(json) {
				return process(json.suggestion)
			}
		});
	},
	matcher: function(param) {return true}
});
