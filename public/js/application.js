$(document).ready(function() {
  $("#youtube").on("submit",function(event){
    event.preventDefault();
    var $form = $(this);
    var formData = $form.serialize();

  $.get(
    "https://www.googleapis.com/youtube/v3/search",{
      part: 'snippet',
      maxResults: 10,
      q: formData,
      type: 'video',
      videoEmbeddable: 'true',
      videoType: 'any',
      key: 'AIzaSyAg_Dkisf32L-2JS_cKX0EKJu9CDeXU_t0'
    },
    function(response){
      var output;
      $.each(response.items, function(i, item){
        console.log(item)
        var pic = item.snippet.thumbnails.medium.url;
        var title = item.snippet.title;
        var vidID = item.id.videoId;
        var link = "https://www.youtube.com/watch?v="+vidID
        console.log(link)
        output = title;

        $("#youtube ul").append("<li><a href="+link+">"+title+"</a></li>")
      })
    }
   )
  })
});
