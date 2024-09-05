class DioResponse {
  dynamic data;
  bool isSuccess;
  int? errorStatusCode;
  String errorMessage;

  DioResponse({
    this.data,
    this.isSuccess = true,
    this.errorStatusCode,
    this.errorMessage = "",
  });

  @override
  String toString() =>
      'DioResponse(data: $data, isSuccess: $isSuccess, errorStatusCode: $errorStatusCode, errorMessage: $errorMessage)';
}
