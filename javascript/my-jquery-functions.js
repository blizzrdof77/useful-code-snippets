// jQuery Functions

// Gets alt tags for all img elements
function getImgAltTags() {
  var alts = "";
  $("img").each ( 
    function() { 
      alts += "  |  " + $(this).attr("alt"); 
    }
  );
  console.log(alts);
  alert(alts);
}