import 'package:pizza_delivery_api/pizza_delivery_api.dart';

class PizzaDeliveryApiChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();
    router.route("/example").linkFunction((request) async {
      return Response.ok({"key": "value"});
    });

    return router;
  }
}
