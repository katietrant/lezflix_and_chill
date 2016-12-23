$(document).ready(function() {
  $("button").on("click",function(){
    console.log("what now?")
  })

  $.get(
    "https://www.googleapis.com/youtube/v3/search",{
      part: 'snippet',
      q: 'emison',
      type: 'video',
      videoEmbeddable: 'true',
      videoType: 'any',
      key: 'AIzaSyAg_Dkisf32L-2JS_cKX0EKJu9CDeXU_t0'
    },
    function(response){
      $.each(response.items, function(i, item){
        console.log(item)
        var pic = item.snippet.thumbnails.medium.url;
        var title = item.snippet.title;
        console.log(title)
      })
    }
  )
    // function handleAPILoaded() {
    //   $('#youtube').attr('disabled', false);
    // }
});
