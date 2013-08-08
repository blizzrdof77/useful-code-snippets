// ----------------------------- \\
//      My jQuery Functions      \\
//        13 March 2013          \\
//       Benjamin Wagner         \\
// benjamin.j.wagner.1@gmail.com \\
// ----------------------------- \\
// -----------------------------------------------------------\\
// Check me out on GitHub @blizzrdof77                        \\
// GitHub Repo:                                               \\
// https://github.com/blizzrdof77/useful-code-snippets.git    \\
// ---------------------------------------------------------- \\

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

// Restyle select menus
function restyleSelectMenu(elementSelector, userMainStyle, userAltStyle) {
  var str = "";
  $(elementSelector + " option:selected").each(function () {
    str += $(this).text() + " ";
  });

  if (str.indexOf("Select")) {
    $(elementSelector).attr("style", userAltStyle);
  } else {
    $(elementSelector).attr("style", userMainStyle);
  }  
}

// Initialize dynamic select menu styling
function initDynamicSelectMenuStyling(elementSelector, myStyle) {
  $(document).ready( function() {
    restyleSelectMenu(elementSelector, myStyle);
    $(elementSelector).change(function () {
      restyleSelectMenu(elementSelector, myStyle);
    });
  });
}

// Remove Element Attribute with specified value
function removeElementAttribute(attrName, attrValue) {
  $("input["+attrName+"='"+attrValue+"']").each( function() {
    $(this).attr("readonly", false);
  });
}

$(document).ready( function() {
  var a = "readonly";
  var b = "readonly";
  removeElementAttribute(a, b);
});


// Add attributes to different types of links to control behavior
function adjustElementAttributes() {
  if ($(".list").length) {
     $(".product:first-child").addClass("first");
  }
  $("#nav-primary > ul").addClass("nav");
  $("#nav-primary > ul > li").each( function() {
    $('<a class="mobile_expand" href="javascript:void(0);">+</a>').prependTo($(this));
  });
} 

// Slick scroll animation to top of document
function scrollToTop() {
$( 'html, body' ).animate( { 
    scrollTop: $( "html" ).offset().top
  }, 425 );
}

// Animated scroll to page elements
function scrollToElement() {
  $( "#sidebar ul li ul li" ).click( function () {
    $( "#sidebar ul li ul li.highlighted" ).removeClass( "highlighted" );
    $( this ).addClass( "highlighted" );
    ref = $( this ).children( "a" ).attr( "href" );
    $( "#tire-overview .product" ).each( function () {
      eachRef = "#" + $( this ).attr( "id" );
      if ( eachRef == ref ) {
        $( this ).addClass( "highlighted" );
        $( 'html, body' ).animate( { 
          scrollTop: $( $( this ) ).offset().top - 30
        }, 425 );
      } else {
        $( this ).removeClass( "highlighted" );
      }

    });
    return false;
  });
}

// Show hidden element on page
function showElement(elementSelector) {
  $(elementSelector).fadeIn('fast').addClass("open");
  return false;
}

// Hide visible element on page
function hideElement(elementSelector) {
  $(elementSelector).hide().removeClass("open");
  return false;
}

function onlyShowFirstLine() {
  $("#shows ul li.post").each( function () {
  postId = $(this).attr("id");
  if ( $("#" + postId + " .info .event-details").text().trim() == $("#" + postId + " .info .event-details p::first-line").text().trim() ) { 
    $("div.info .event-details::after").hide();
    alert('same');
  } 
alert($("#" + postId + " .info .event-details").text().trim() + "  |  "  + $("#" + postId + " .info .event-details p::first-line").text().trim());
});
}

// Sort HTML elements by numerical attribute value
// function sortListNumerically (listItems) {
//   sortElements = $("#shows ul li");
//   i = 0;
//   var sortValues = [];
// sortElements.each(function(){
//     // create a temp array for this row
//     var row = [];
//     // add the phone and rating as array elements
//     row.push($(this).find('.clsPhone').text());
//     row.push($(this).find('.clsRating').text());
//     // add the temp array to the main array
//     s1.push(row);
//     i++;
// });
// if (parseInt($("#shows li:first-child .orderby").html(), 10) < parseInt($("#shows li:nth-child(2) .orderby").html(), 10)) { alert("hey");}
// //parseInt($("#shows li:first-child .orderby").html(), 10




// }
// function sortList(ul){
//     var new_ul = ul.cloneNode(false);

//     // Add all lis to an array
//     var lis = [];
//     for(var i = ul.childNodes.length; i--;){
//         if(ul.childNodes[i].nodeName === 'LI')
//             lis.push(ul.childNodes[i]);
//     }

//     // Sort the lis in descending order
//     lis.sort(function(a, b){
//        return parseInt(b.childNodes[0].data , 10) - 
//               parseInt(a.childNodes[0].data , 10);
//     });

//     // Add them into the ul in order
//     for(var i = 0; i < lis.length; i++)
//         new_ul.insertBefore(lis[i], new_ul.firstChild);
//     ul.parentNode.replaceChild(new_ul, ul);
// }
// sortList(document.getElementsByClassName('sort')[0]);





// x = 1;
// i = 1;
// items = $(".sort").children().length;
// $(".event-title").each ( function() {
//   //alert("MAIN = " + $(this).text().trim() + "  |  SORT = " + $(".sort li:nth-child(" + x + ")" ).attr("data-title").trim());
//   this_item = $(this).parent().parent().parent().parent();
//   if ($(this).text().trim() == $(".sort li:nth-child(" + x + ")" ).attr("data-title").trim() ) { 
//         $("ul#main-shows").prepend(this_item);
//         x += 1;
//   } else {
    
//       while(i <= items) { 
//         alert($(".sort li:nth-child(" + i + ")" ).attr("data-title").trim());
//       }

    
//         $("ul#main-shows").prepend(this_item);
//   }
//   x = 1;
// });