
import 'package:apex_dart/src/renderer/apexcharts.css.dart';
import 'package:apex_dart/src/renderer/apexcharts.js.dart';

const String INDEX_HTML = """ 
<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>ApexCharts</title>
    <style>$APEX_CHARTS_CSS</style>
    <script>$APEX_CHARTS_JS</script>
  </head>
  <body>
  
    <h2>Line Chart 1</h2>
    <div id="chart"></div>
    
    
    <script>
      window.CHART = null;
      window.onload = function () {
      
        var options = {
          series: [{
            name: 'sales',
            data: [30,40,35,50,49,60,70,91,125]
          }],
          chart: {
            height: 350,
            type: 'line',
            zoom: {
              enabled: false
            }
          },
          dataLabels: {
            enabled: false
          },
          stroke: {
            curve: 'straight'
          },
          title: {
            text: 'Product Trends by Month',
            align: 'left'
          },
          grid: {
            row: {
              colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
              opacity: 0.5
            },
          },
          xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
          }
        };
      
        window.CHART = new ApexCharts(document.querySelector("#chart"), options);
        window.CHART.render();
      
      }
      
      
      function updateOptions() {
      
          function getRand() {
            return Math.floor(Math.random() * 100);
          }

          console.log(window.CHART);
          
          var options = {
            series: [{
              name: "Desktops",
              data: [getRand(), getRand(), getRand(), getRand(), getRand(), getRand(), getRand(), getRand(), getRand()]
            }],
          };
          window.CHART.updateOptions(options);
              
      }
      
    </script>
  </body>
</html>
""";