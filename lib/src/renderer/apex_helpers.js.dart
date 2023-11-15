


const String APEX_HELPER_JS = r""" 

window.chart = null;


window.update = function(options) {
  
  console.log("[+] Update options: ", JSON.stringify(options));
 
  window.chart.updateOptions(options);
  
}


window.dataURI = async function() {
  console.log("[+] Get Data URI");
  return await window.chart.dataURI();
}




window.JsonBuetify = options => JSON.stringify(options);

window.getChartHeight = () => document.querySelector("#chart").clientHeight;

window.randomInt = () => Math.floor(Math.random() * 100);


""";