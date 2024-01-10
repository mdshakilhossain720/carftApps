
class ResponseModel{
  final int statusCode;
  final bool Success;
  final dynamic returnData;
  ResponseModel(  {required this.statusCode,required this.returnData,required this.Success});
}