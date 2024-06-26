import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class DemoPayment extends StatefulWidget {
  const DemoPayment({super.key});

  @override
  State<DemoPayment> createState() => _DemoPaymentState();
}

class _DemoPaymentState extends State<DemoPayment> {
  Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    // TODO: implement initState
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Success");
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Fail");
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  var options = {
                    'key': 'rzp_live_ILgsfZCZoFIKMb',
                    'amount': 100000000,
                    'name': 'Acme Corp.',
                    'description': 'Fine T-Shirt',
                    'prefill': {
                      'contact': '8888888888',
                      'email': 'test@razorpay.com'
                    }
                  };

                  _razorpay.open(options);
                },
                child: Text("Pay")),
          )
        ],
      ),
    );
  }
}
