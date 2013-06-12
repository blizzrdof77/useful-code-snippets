<?php 
/*********************************/
/* Usage of custom php functions */
/*********************************/  
?>
<div class="rss-feed" id="scrollbar1">
  
  <!-- JS PRETTY SCROLLBAR -->
  <div class="scrollbar"> 
    <div class="track"> 
      <div class="thumb"> 
        <div class="end"></div> 
      </div> 
    </div>
  </div>

  <!-- JS PRETTY SCROLL CONTAINER -->
  <div class="viewport">
    <div class="overview">
      <?php 
        $feed_url = "http://api.del.icio.us/rss/rss-url";
        $user_url = "http://delicious.com/user";
        $ch = curl_init($feed_url); 
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        $data = curl_exec($ch);
        curl_close($ch);
        $doc = new SimpleXmlElement($data, LIBXML_NOCDATA);
        if(isset($doc->channel)) {
          parseRSS($doc);
        }
      ?>
    </div>
  </div>
  <?php echo '<p class="right clear"><a href="'.$user_url.'" target="_blank" class="view-all offsite-tab"> view all </a></p>'; ?>
  
</div>