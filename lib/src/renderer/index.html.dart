
import 'dart:convert';

import 'package:apex_dart/src/renderer/apex_helpers.js.dart';
import 'package:apex_dart/src/renderer/apexcharts.css.dart';
import 'package:apex_dart/src/renderer/apexcharts.js.dart';

String render(options) {
  return """ 
    <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>ApexCharts</title>
        <script>$APEX_HELPER_JS</script>
        <script>$APEX_CHARTS_JS</script>
        <style>$APEX_CHARTS_CSS</style>
      </head>
      <body>
        <div id="chart" ></div>
        
        <div id="error_card" style="display: none; background-color: #f7f7f7; border: 1px solid #dcdcdc; border-radius: 5px; padding: 20px; margin: 10px; text-align: center;">
          <p style="color: red; font-size: 18px;">Error Encountered</p>
          <p style="color: #333; font-size: 14px;">An error occurred while rendering the chart. Please check the console for more information.</p>
          <div id="error_message" style="color: red; font-size: 14px;"></div>
        </div>

        <script>
          window.onload = function () {
            try {
              window.chart = new ApexCharts(document.querySelector("#chart"), ${jsonEncode(options)});
              window.chart.render();
            }
            catch (e) {
              console.error(e);
              document.getElementById("error_card").style.display = "block";
              document.getElementById("error_message").textContent = "Error Message: " + e.message;
            }
          }
        </script>
      </body>
    </html>
  """;
}