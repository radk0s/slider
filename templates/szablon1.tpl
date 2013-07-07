<html>
 <head>
  <title>Smarty</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
  <script type="text/javascript" src="./flex/jquery.flexslider.js"></script>
  <script type="text/javascript" src="./flex/jquery.flexslider-min.js"></script>
  <link rel="StyleSheet" href="./flex/flexslider.css" type="text/css">
  <script>
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    itemWidth: 500,
    margin: 20,
    maxItems: 2
  });
});

  </script>
  <style>     
      .shortList .listItem .innerListItem {
          display: inline-block;
          background-color: silver;
          width: 230px;
          height: 170px;
          margin-bottom: 8px;
          margin-right: 8px;
      }
      
      .shortList .listItem .innerListFirstItem {
          display: inline-block;
          background-color: silver;
          height: 350px;
          width: 470px;
          margin-bottom: 0px;
      }
      
      .shortList .listItem{
          margin-left: 16px;
      }
      
  </style>  
 </head>
 <body>
     <div class="shortList flexslider" style="width: 1000px">
         <ul class="slides">
            {foreach $lista as $item}
                {if $item@index eq 0}
                    <li><div class="listItem">
                            <div class="innerListFirstItem">
                                {$item}
                            </div>
                        </div>
                    </li>
                {else}
                    {if $item@index%4 eq 1} 
                        <li>
                            <div class="listItem">
                    {/if}
                            <div class="innerListItem">
                                {$item}
                            </div>
                    {if $item@index%4 eq 0} 
                            </div>
                        </li> 
                    {/if}
                {/if}
            {/foreach} 
        </ul>
     </div>  
 </body>
</html>


