<?php 
/******************************************/
/* Custom php functions for this and that */
/******************************************/
?>

<?php

/** Get RSS Feed and parse into excerpt 
     ...using delicio.us as example 
 */
function getRSS($feed_url, $other_url=false, $title_heading=false, $char_count=false) 
{

  $id = "generic-rss-feed";

  if ( isset($title_heading) ) 
  { 
    echo '<h4 class="sub-header">'.htmlentities($title_heading).'</h4>';
    $id = str_replace(" ", "-", strtolower($title_heading));
    $id = str_replace("&-", "", $id);
  }
  echo '<div class="rss-feed" id="'.$id.'"> <div class="scrollbar"> <div class="track"> <div class="thumb"> <div class="end"></div> </div> </div> </div> <div class="viewport"> <div class="overview">';
  $ch = curl_init($feed_url); 
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  $data = curl_exec($ch);
  curl_close($ch);
  $doc = new SimpleXmlElement($data, LIBXML_NOCDATA);
  if( isset($doc->channel) ) {
    $xml = $doc;
    $cnt = count($xml->channel->item);
    for($i=0; $i<$cnt; $i++) {
      $url  = $xml->channel->item[$i]->link;
      $title  = $xml->channel->item[$i]->title;
      $excerpt = $xml->channel->item[$i]->description;

      $item_id = 'feed-item-'.$i;
      if( isset($char_count) ) 
      {
        $excerpt = getExcerpt($excerpt, $char_count);
      }

      echo '<div id="'.$item_id.'" class="delicious-item"> <p><strong>'.$title.'</strong> &ndash; '.$excerpt.' <a class="read-more" target="_blank" href="'.$url.'" title="'.$title.'"> - Read </a> </p> </div>';

    }
  }
  echo '</div> </div>';

  if ( isset($other_url) ) {
    echo '<p class="right clear"> <a href="'.$other_url.'" target="_blank" class="view-all offsite-tab"> view all </a></p>';
  }
  echo '</div>';

}

function parseRSS($xml, $char_count)
{
  $cnt = count($xml->channel->item);
  for($i=0; $i<$cnt; $i++) {
    $url  = $xml->channel->item[$i]->link;
    $title  = $xml->channel->item[$i]->title;
    $excerpt = $xml->channel->item[$i]->description;


    $id = 'feed-item-'.$i;

    echo '<div id="'.$id.'" class="delicious-item"> <p>'.getExcerpt($excerpt, $char_count).' <a class="read-more" target="_blank" href="'.$url.'" title="'.$title.'"> - Read </a> </p> </div>';
  }
}

function getExcerpt($text, $numb) {
  if (strlen($text) > $numb) { 
    $text = substr($text, 0, $numb); 
    $text = substr($text,0,strrpos($text," ")); 
    $etc = " ...";
    $text = $text.$etc; 
  }
  return $text; 
}


?>