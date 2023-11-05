


const String APEX_HELPER_JS = r""" 

window.chart = null;


window.randomInt = function() {
  return Math.floor(Math.random() * 100);
}


window.update = function(options) {
  
  console.log("[+] Update options: ", JSON.stringify(options));
 
  window.chart.updateOptions(options);
  
}


window.dataURI = async function() {
  console.log("[+] Get Data URI");
  return await window.chart.dataURI();
}





window.JsonBuetify = function(options) {
  return JSON.parse(JSON.stringify(options));
}


""";