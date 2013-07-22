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