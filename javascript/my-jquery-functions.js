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
  $("img").each (function() {
      alts += "  |  " + $(this).attr("alt"); 
  });
  console.log(alts);
  //alert(alts);
}

// Example of creating a mobile menu
function makeMobileMenu() {
  if ($(".list").length) {
    $(".product:first-child").addClass("first");
  }
  $("#nav-primary > ul").addClass("nav");
  $("#nav-primary > ul > li").each( function() {
    $('<a class="mobile-expand" href="javascript:void(0);">+</a>').prependTo($(this));
  });
} 

// Slick scroll animation to top of document
function scrollToTop() {
  $( 'html, body' ).animate( { 
    scrollTop: $( "html" ).offset().top
  }, 425 );
}

// Animated scroll to page elements example
function scrollToElement() {
  $( "#sidebar ul li ul li" ).click( function () {
    $( "#sidebar ul li ul li.highlighted" ).removeClass( "highlighted" );
    $( this ).addClass( "highlighted" );
    ref = $( this ).children( "a" ).attr( "href" );
    $( "#overview .product" ).each( function () {
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

// Example function to show only first line of text
function onlyShowFirstLine() {
  $(".post").each( function () {
    postId = $(this).attr("id");
    if ( $("#" + postId + " .info .event-details").text().trim() == $("#" + postId + " .info .event-details p::first-line").text().trim() ) { 
      $("div.info .event-details::after").hide();
      console.log('hidden...');
    } 
    console.log($("#" + postId + " .info .event-details").text().trim() + "  |  "  + $("#" + postId + " .info .event-details p::first-line").text().trim());
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

// Get CSS style background images of element group
function getBgImages() {
  var bgImage = "";
  var currentBgImage = "";
  $("#containerId .targetElemetsClassName").each(function () {
    currentBgImage = $(this).attr("style").toString();
    bgImage += ", " + currentBgImage.substring(currentBgImage.indexOf('(') + 1, currentBgImage.indexOf(')'));
  });
  console.log(bgImage);
}

// Get exteral URL page title w/ ajax
function getExternalPageTitle() {
  $.ajax({
        url: "http://fahlgren.dev/work/case-studies",
        complete: function(data) {
          alert(data.responseText.substring(data.responseText.indexOf('<title>') + 7, data.responseText.indexOf('</title>')));           
        }
  });
}

// Example of .load() jQuery function
$(".link").click( 
  function() {    
    $('body').load('http://url.com');
    return false;
  }
);

// Generic specific function for swapping href string
function swapHrefString(findString, replaceString) {
  $.each($("a[href^='http://'],a[href^='https://']"), function() {
    strHref = $(this).attr("href");
    if (strHref.indexOf(findString)) {
      $(this).attr("href", strHref.replace(findString, replaceString));
    }
  });
}

// General function to swap elem attribute string
function swapElementString(elem, attrib, findString, replaceString) {
  console.log($( elem + "[" + attrib + "*='" + findString + "']"));
  $.each( $( elem + "[" + attrib + "*='" + findString + "']"), function() {
    strHref = $(this).attr(attrib);
    
    $(this).attr(attrib, strHref.replace(findString, replaceString));
    
  });
}
swapElementString("img", "src", "/example/using/path", "/example/replace/string");


// Example of pushstate usage
$("#locator a").click(function() {
  if (history.pushState) {
    window.history.pushState(document.location + "#locator");
  }
});

// Simple go back -1 in browser history function
function goBack() {
  history.go(backLocation);
}

// Useful new window function
newWindow = function () {
  var s = screen,
  s = s.width,
  s = ( ( s / 2 ) * 3 ) + (s/10),
  sh = ( screen.height / 3 ) * 2;
  //sh;

  var strTitle = '<h3> Contact Us </h2>',
    strWindowTitle = "Chinese School | Contact",
    myWin = window.open( "", "myWin", "titlebar=no,toolbar=no,location=no,menubar=no,scrollbars=no,left=" + s + "px,top=" + sh + "px,height=350px,width=450px" );

  myWin.document.write( '<!DOCTYPE HTML>' +
    '<html><head><title>' + strWindowTitle + '</title><link rel="stylesheet" type="text/css" media="all" href="/theme-assets/style.css"></head><body class="popup" style="padding:0;margin:0 auto;text-align:center;box-sizing:border-box;border:4px solid rgba(173, 20, 20, 0.89)">' + strTitle + $result + '</body></html>' );
}


// ------------------
// - WORDPRESS CRUD -
// ------------------
// Useful for turdpress.com
YouTubeRssFeed = function() {
  $ = jQuery;
  var youTubeWidget = $('#widgetId');
  var videos = youTubeWidget.find('li a');
  videos.each( function() { 
    var vid = $(this).attr('href').split('&feature')[0].split('v=')[1];
    $(this).html( '<img src="//i1.ytimg.com/vi/' + vid + '/hqdefault.jpg" alt="" class="thumbnail">' ); 
  });
}


// ------------------
// -  KENTICO CRUD  -
// ------------------
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
