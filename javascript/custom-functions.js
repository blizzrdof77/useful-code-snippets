function hideElementOnPageLoad() {
  window.onload = function () {
  document.getElementById("formElem_form_MultipleExternalTireDetailPages___Frame").style.display = "none";
};

function checkboxToggleViewStage(checkboxId, tableId)  {
    var isChecked = document.getElementById(checkboxId).checked;
    var showHide = isChecked ?"block":"none";
    document.getElementById(tableId).style.display = showHide;
};


function setFundraising() { 
  document.getElementById('m_c_h_Header_lblUserInfo').selectedIndex = 2;

}

"<style> #id-1054713020 {display:block!important;} </style> <script type=\"text/javascript\"> function setFundraising() { document.getElementById('m_c_f_f_CategoryAgeGroup_dropDownList').selectedIndex = 2; } window.onload = function () {document.getElementById('m_c_f_f_CategoryAgeGroup_dropDownList').selectedIndex = 2; } </script>"



var currentUser = document.getElementById('m_c_h_Header_lblUserInfo').innerHTML;
var i = document.getElementById('m_c_f_f_BlogPostAuthor_dropDownList').selectedIndex;
var name = document.getElementById('m_c_f_f_BlogPostAuthor_dropDownList')[i].innerHTML;
if (currentUser == name) { document.getElementById('m_c_f_f_BlogPostAuthor_dropDownList').selectedIndex }


selectMenu = document.getElementById('m_c_f_f_BlogPostAuthor_dropDownList');
i = 0;
ln = selectMenu.length;
currentUser = document.getElementById('m_c_h_Header_lblUserInfo').innerHTML;

while(i < ln) { 
  fullName = selectMenu[i].innerHTML;
  alert(fullName + " | " + currentUser); 
  i+=1;
}



<script type="text/javascript">
  // Hide "Page" tab element for Certain Pages
  window.onload = function () {
    pageTab = document.getElementById('TabItem_0');
    pageTabBlog = pageTab.attributes.onclick.value.toString();
    blogSub = pageTabBlog.indexOf("/Blog");

    if (blogSub != -1) 
    { 
      activeTab = document.getElementById("TabItem_0").attributes.class.value.toString();
activeTabBool = activeTab.indexOf("TabControlSelected"); 
if (activeTabBool != -1) { 
  pageTab = document.getElementById('TabItem_1');
  pageTabBlog = pageTab.attributes.onclick.value;
  document.location = "javascript: " + pageTabBlog; 
} 
      pageTab.style.display = "none";
    } 
    else 
    { 
      alert("no"); 
      pageTab.style.display = "table-cell";
    }
  }
</script>


