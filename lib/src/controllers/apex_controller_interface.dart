

abstract class ApexControllerAbstract {

  double get chartHeight;


  void update(Map<String, dynamic> options);


  void updateSeries({ required Map<String, dynamic> data });


  void downloadSvg();


  Future<double?> getChartHeight();


  void adjustViewHeight();


}