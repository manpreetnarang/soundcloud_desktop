$(document).ready ->
	$('ul.tracks').html("Loading...")
	tracks = JSON.parse(party())
	$('ul.tracks').html("")
	for track in tracks
		do ->
			$('ul.tracks').append("<li class='stream' data-title='#{track.title}' data-stream-url='/tracks/#{track.id}'>#{track.title}</a></li>")
	
	$("a.stopall").click ->
		soundManager.stopAll()
		launch_notification("Stopping", "Stopping all tracks!")

	launch_notification = (title, message) ->
		notification = Ti.Notification.createNotification()
		notification.setTitle(title)
		notification.setMessage(message)
		notification.show()

	$("ul.tracks li.stream").click ->
		SC.initialize client_id: "e5d383de590b214e7990e2ec100b93b0"
		##Stop the current playing song
		SC.stream "#{$(this).attr('data-stream-url')}",
			autoPlay: true
		window.playing = "#{$(this).attr('data-stream-url')}"
		launch_notification("Now Playing", "Playing - #{$(this).attr('data-title')}")

