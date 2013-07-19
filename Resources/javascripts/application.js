(function() {
  $(document).ready(function() {
    var launch_notification, track, tracks, _fn, _i, _len;
    $('ul.tracks').html("Loading...");
    tracks = JSON.parse(party());
    $('ul.tracks').html("");
    _fn = function() {
      return $('ul.tracks').append("<li class='stream' data-title='" + track.title + "' data-stream-url='/tracks/" + track.id + "'>" + track.title + "</a></li>");
    };
    for (_i = 0, _len = tracks.length; _i < _len; _i++) {
      track = tracks[_i];
      _fn();
    }
    $("a.stopall").click(function() {
      soundManager.stopAll();
      return launch_notification("Stopping", "Stopping all tracks!");
    });
    launch_notification = function(title, message) {
      var notification;
      notification = Ti.Notification.createNotification();
      notification.setTitle(title);
      notification.setMessage(message);
      return notification.show();
    };
    return $("ul.tracks li.stream").click(function() {
      SC.initialize({
        client_id: "e5d383de590b214e7990e2ec100b93b0"
      });
      SC.stream("" + ($(this).attr('data-stream-url')), {
        autoPlay: true
      });
      window.playing = "" + ($(this).attr('data-stream-url'));
      return launch_notification("Now Playing", "Playing - " + ($(this).attr('data-title')));
    });
  });

}).call(this);
