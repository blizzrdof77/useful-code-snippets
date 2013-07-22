QUERIES:
/* Franklin Park Promos */
SELECT 0 as PromoID, 'Select a Promo' as PromoName
UNION ALL
SELECT PromoID, PromoName FROM FPC_Promo
UNION ALL
SELECT EventID + 10000 as PromoID, PromoName + '(Featured Event)' From FPC_EventOther WHERE Featured != 'FALSE'
UNION ALL
SELECT SupportItemID + 20000 as PromoID, PromoName + '(Featured Class)' From FPC_Class WHERE Featured != 'FALSE'

/* INSERT INTO */
INSERT INTO cbustoolkit_staging.Images (ImageId,ImageName,LicenseTypeId,ContactId,ImageCopyright,MediaTypeId,EmbedCode,VideoUrl,Description,FileName,ImagePosition,Hidden)
  VALUES(334,'07735',1,NULL,'Taste Hospitality Group',1,null,null,'Hubbard Grille',null,999999999,0);

  SELECT UserID, FirstName + ' ' + LastName FROM CMS_User WHERE (FirstName != '') ORDER BY UserName


  SELECT View_CMS_Tree_Joined.NodeOwner, CMS_User.UserName FROM View_CMS_Tree_Joined INNER JOIN CMS_User ON View_CMS_Tree_Joined.NodeOwner = 
  ;


  SELECT NodeOwner as UserID, FirstName + ' ' + LastName FROM View_CMS_Tree_Joined, CMS_User WHERE (UserID = {% CMSContext.CurrentDocument.NodeLevel %})

  SELECT DocumentID, DocumentNamePath FROM CMS_Document WHERE ( (DocumentNamePath LIKE '%Application/%') AND (DocumentNamePath NOT LIKE '%Application/%/%'))