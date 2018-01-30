---
layout: home
in_header: true
title: Signup
permalink: /signup/
---
<div class="divider">
# Signup
</div>

<div class="section">

<span style="background:yellow">
The first 50 pages are free!
</span>

Thereafter, the following applies:

<table>
    <thead>
      <tr>
        <td>Number of pages</td>
        <td>Price per page</td>
        <td>Price</td>
      </tr>
    </thead>
    <tbody id="pricinglist">
  <!--Generated list items will go here-->
    </tbody>
</table>

<script id="template-list-item" type="text/template">
<tr>
  <td>
    -nop-
  </td>
  <td>
    -ppp-p
  </td>
  <td>
   £-price-
  </td>
</tr>
</script>


Page credits are valid for one year from purchase.

[Launch the app now!](https://my.pdfcrun.ch/){:.calltoaction}

</div>


<script type="text/javascript">
var pricing_data = 'https://cdn.pdfcrun.ch/pricing/v1.json';
var template = document.getElementById("template-list-item");
var templateHtml = template.innerHTML;

      
// get new XHR object
var newXHR = new XMLHttpRequest();

// bind our event listener to the "load" event.
// "load" is fired when the response to our request is completed and without error.
newXHR.addEventListener( 'load', reqListener );

newXHR.open( 'GET', pricing_data );

// send it off!
newXHR.send();

// Function to generate and returns the HTML.
// Accepts an object as a parameter
function reqListener() {
  var dataObject = JSON.parse(this.response);
  var listHtml = "";

  var thresholds = dataObject.thresholds;
  for (var i=0; i<thresholds.length; i++) {
    var line = thresholds[i];
    var nop = line['nop'];
    var ppp = line['ppp'];
    var price = nop * ppp / 100;
    listHtml += templateHtml
      .replace(/-ppp-/g, ppp)
      .replace(/-nop-/g, nop.toLocaleString())
      .replace(/-price-/g, price);
  }

  document.getElementById("pricinglist").innerHTML = listHtml; 
}
</script>
