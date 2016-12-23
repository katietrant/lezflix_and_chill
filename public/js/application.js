$(document).ready(function() {
  $("button").on("click",function(){
    console.log("what now?")
  })

  $.get(
    "https://www.googleapis.com/youtube/v3/search",{
      part: 'snippet',
      maxResults: 10,
      q: 'emison',
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
        output = title;
        $("#youtube ul").append("<li>"+output+"</li>")
      })
    }
  )
    // function handleAPILoaded() {
    //   $('#youtube').attr('disabled', false);
    // }
});
