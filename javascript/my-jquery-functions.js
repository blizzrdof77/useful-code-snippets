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
  $("img").each(
    function() {
      alts += "  |  " + $(this).attr("alt");
    }
  );
  console.log(alts);
  if (document.location.hash == "#test") {
   alert("this");
  }
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
  $("#container ul li.post").each( function () {
    postId = $(this).attr("id");
    if ( $("#" + postId + " .text").text().trim() == $("#" + postId + " .text p::first-line").text().trim() ) { 
      $(".text text::after").hide();
      alert('same');
    } 
    alert($("#" + postId + " .text").text().trim() + "  |  "  + $("#" + postId + " .text p::first-line").text().trim());
  });
}

// Adjust Column Heights
function adjustColumnHeights(columnContainer, columnOne, columnTwo) {
  if ( columnContainer.length ) { 
    if ( columnOne.css("height") > columnTwo.css("height") ) 
    { 
      columnTwo.css("height", columnOne.css("height")); 
    } 
  }
}

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

function swapHrefString(findString, replaceString, htmlElemTarget) {
  if( htmlElemTarget == null ) { 
    htmlElemTarget = "a";
    
  } 
  $.each($(htmlElemTarget+"[href*='" + findString + "'], " + htmlElemTarget+"[src*='" + findString + "']"), function() {
   strHref = $(this).attr("href");
   if (strHref.indexOf(findString)) {
    $(this).attr("href", strHref.replace(findString, replaceString));
  }
});
}


function getBgImages(elementSelectors) {
  var bgImage = "";
  var currentBgImage = "";
  $(elementSelectors).each(function () {
    currentBgImage = $(this).attr("style").toString();
    bgImage += ", " + currentBgImage.substring(currentBgImage.indexOf('(') + 1, currentBgImage.indexOf(')'));
  });
  console.log(bgImage);
}

function getExternalPageTitle() {
  $.ajax({
        url: "/some-url",
        complete: function(data) {
          alert(data.responseText.substring(data.responseText.indexOf('<title>') + 7, data.responseText.indexOf('</title>')));           
        }
  });

}

function loadExternalUrl(externalUrl)
  $('body').load(externalUrl);
  return false;
}


function swapElementString(elem, attrib, findString, replaceString) {
  console.log($(elem + "[" + attrib + "*='" + findString + "']"));
  $.each($(elem + "[" + attrib + "*='" + findString + "']"), function() {
    strHref = $(this).attr(attrib);

    $(this).attr(attrib, strHref.replace(findString, replaceString));

  });
}
// Example Usage 
// swapElementString("img", "src", "/App_Themes/Whatever", "/App_Themes/NewWhatever");
function loadEternalData() {
   
 $("a").click(function(e) {
   var $el = $(this);
   $el.stop(true, true);
   e.preventDefault();
   if (history.pushState) {
     window.history.pushState(null, $el.html(), $el.attr('href'));
   }
   // Update the page title
   $.ajax({
     url: $(this).attr("href"),
     complete: function(data) {
       pagedata = data.responseText;
       $("body").children().fadeOut().parent().prepend(pagedata).next().remove();
       pagetitle = pagedata.substring(pagedata.indexOf('<title>') + 7, pagedata.indexOf('</title>'));
       document.title = pagetitle;
     }
   });
   return false;
 });
}

// Go back in browser history 
function goBack() {
  history.go(backLocation);
}

// Keypress Functions
$(document).keyup(function(e) {
  // Escape key
  if (e.keyCode == 27) { 
    // Do something
  }
  // Enter/Return Key
  else if (e.keyCode == 13) {
    // Do something else
  }
});