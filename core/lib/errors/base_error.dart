enum ErrorType {
  ConnectionLost,
  NoDataAvailable,
  GeneralError,
  InCorrectData,
  NotAllowed,
}

class BaseError {
  String message;
  String description;
  ErrorType type;

  BaseError(this.message,
      {this.description, this.type}); // Prevent use as mixin.

}
