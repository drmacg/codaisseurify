function createSong(artist_id, track_number, name, duration) {
  var newSong = { track_number: track_number, name: name, duration: duration};

  $.ajax({
    type: "POST",
    url: "/api/artists/" + artist_id + "/songs",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    var songData = document.createTextNode(track_number + ". " + name + " (" + duration + ")");
    $("#song-list").append(songData);
  })

  .fail(function(error) {
    console.log(error)
  });
}

function deleteSong() {
  var link = $(this);
  var artist_id = $("#artist-id").html();
  var song_id = link.data('id');

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artist_id + "/songs/" + song_id,
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    link.parent().remove();
  });
}

function submitSong(event) {
  event.preventDefault();
  var track_number = $("#song_track_number").val();
  var name = $("#song_name").val();
  var duration = $("#song_duration").val();

  var artist_id = $("#artist-id").html();

  createSong(artist_id, track_number, name, duration);
}

function deleteAllSongs(event) {
  event.preventDefault();

  $.each($(".song"), function(index, song) {
    $(song).find("a").trigger('click');
  });
}

$(document).ready(function() {
   $("form").bind('submit', submitSong);
   $(".delete-song").bind('click', deleteSong);
   $(".delete-all").bind('click', deleteAllSongs);
});
