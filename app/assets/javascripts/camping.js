jQuery(function() {
  var cities;
  cities = $('#camping_city_id').html();
  console.log(regions);
  return $('#camping_region_id').change(function() {
    var region, options;
    region = $('#camping_region_id :selected').text();
    options = $(cities).filter("optgroup[label=" + region + "]").html();
    console.log(options);
    if (options) {
      return $('#camping_city_id').html(options);
    } else {
      return $('#camping_city_id').empty();
    }
  });
});