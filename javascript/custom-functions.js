// ----------------------------- \\
//    My Custom JS Functions     \\
//        23 January 2013        \\
//       Benjamin Wagner         \\
// benjamin.j.wagner.1@gmail.com \\
// ----------------------------- \\
// -----------------------------------------------------------\\
// Check me out on GitHub @blizzrdof77                        \\
// GitHub Repo:                                               \\
// https://github.com/blizzrdof77/useful-code-snippets.git    \\
// ---------------------------------------------------------- \\
// This is for raw javascript functions, ideal for sites/apps that don't use jquery.

// New popup window function
function NewPopupWindow( url ) {
  var s = screen.width,
  sw = ( ( s / 8 ) * 7 ),
  sh = ( ( screen.height / 6 ) * 4.9 ),
  strParams = "titlebar=no,toolbar=no,location=no,menubar=no,scrollbars=yes,left=" + ( ( s - sw ) / 2 ) + "px,top=" + ( ( s - sh ) / 2 ) + "px,height=" + sh + "px,width=" + sw + "px";
  if ( url != null ) {
    var myWin = window.open( "", "myWin", strParams );
    myWin.document.location = url;
  } else {
    alert( 'provide URL parameter' );
  }
}
var newWindow_ = NewPopupWindow( "urlString" );

// hide page elements by Class or ID (default is class)
function hideElementsOnPage( selectorName, selectorType ) {
  var objTargetElements;
  // window.onload = function () { /* <== Uncomment for on page load... */
    if ( selectorType == null ) {
      var selectorType = "id";
    }
    if ( selectorType == "id" ) {
      objTargetElements = document.getElementById( selectorName );
      objTargetElements.style.display = "none";
    } else {
      objTargetElements = document.getElementsByClassName( selectorName );
      
      for(var i = 0; i != objTargetElements.length; ++i) {
        objTargetElements[i].style.display = "none";
      }
    }
  //  } /* <== Uncomment for on page load... */
}

function checkboxToggleViewStage( checkboxId, tableId ) {
  var isChecked = document.getElementById( checkboxId ).checked;
  var showHide = isChecked ? "block" : "none";
  document.getElementById( tableId ).style.display = showHide;
}

function setFundraising(elemId, selectedIndex) {
  document.getElementById( elemId ).selectedIndex = selectedIndex;
}

function selectAllFacebookFriends() {
  var x = document.getElementsByTagName( "input" );
  for ( var i = 0; i < x.length; i++ ) {
    if ( x[ i ].type == 'checkbox' ) {
      x[ i ].click();
    }
  };
  alert( 'All your friends have been selected' );
}

// Useful Kentico Crud...
// ----------------
// Kentico Crud 1 -- Kentico is annoying, so...
$( "input[readonly='readonly']" ).each( function () {
  $( this ).attr( "readonly", false );
} );

// Kentico Crud 2 -- Useful variable definition types...
var currentUser = document.getElementById( 'headerInfoId' ).innerHTML;
var selectedIndex = document.getElementById( 'listId' ).selectedIndex;
var name = document.getElementById( 'listId' )[ i ].innerHTML;
var selectMenu = document.getElementById( 'ddlId' );
var i = 0;
var ln = selectMenu.length;
while ( i < ln ) {
  fullName = selectMenu[ i ].innerHTML;
  alert( fullName + " | " + currentUser );
  i += 1;
}

// Kentico Crud 3 -- Hide "Page" tab element for Certain Pages
window.onload = function () {
  pageTab = document.getElementById( 'TabItem_0' );
  pageTabBlog = pageTab.attributes.onclick.value.toString();
  blogSub = pageTabBlog.indexOf( "/Blog" );
  if ( blogSub != -1 ) {
    activeTab = document.getElementById( "TabItem_0" ).attributes.class.value.toString();
    activeTabBool = activeTab.indexOf( "TabControlSelected" );
    if ( activeTabBool != -1 ) {
      pageTab = document.getElementById( 'TabItem_1' );
      pageTabBlog = pageTab.attributes.onclick.value;
      document.location = "javascript: " + pageTabBlog;
    }
    pageTab.style.display = "none";
  } else {
    alert( "no" );
    pageTab.style.display = "table-cell";
  }
}