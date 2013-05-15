QUERIES:

/* INSERT INTO */
INSERT INTO cbustoolkit_staging.Images (ImageId,ImageName,LicenseTypeId,ContactId,ImageCopyright,MediaTypeId,EmbedCode,VideoUrl,Description,FileName,ImagePosition,Hidden)
  VALUES(334,'07735',1,NULL,'Taste Hospitality Group',1,null,null,'Hubbard Grille',null,999999999,0);

  SELECT UserID, FirstName + ' ' + LastName FROM CMS_User WHERE (FirstName != '') ORDER BY UserName


  SELECT View_CMS_Tree_Joined.NodeOwner, CMS_User.UserName FROM View_CMS_Tree_Joined INNER JOIN CMS_User ON View_CMS_Tree_Joined.NodeOwner = 
  ;




  SELECT NodeOwner as UserID, FirstName + ' ' + LastName FROM View_CMS_Tree_Joined, CMS_User WHERE (UserID = {% CMSContext.CurrentDocument.NodeLevel %})