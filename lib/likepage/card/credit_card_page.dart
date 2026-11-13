import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/likepage/card/last_page.dart';

class Creditcards extends StatefulWidget {
  const Creditcards({
    super.key, required this.name,
  });
  final String name;
  @override
  State<Creditcards> createState() => _CreditcardState();
}

final formkey = GlobalKey<FormState>();

class _CreditcardState extends State<Creditcards> {
  String cardNumber = '';
  String expiryDate = '';
  String cvvNumber = '';
  String cardHolderName = '';
  bool showBack = false;

  void onCreditCardModel(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      cardHolderName = creditCardModel.cardHolderName;
      expiryDate = creditCardModel.expiryDate;
      cvvNumber = creditCardModel.cvvCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController cardnumbercontroller = TextEditingController();
    final TextEditingController datecontroller = TextEditingController();
    final TextEditingController cardholdercontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "checkout",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(

              glassmorphismConfig: Glassmorphism(
                blurX: 10.0,
                blurY: 10.0,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    const Color.fromARGB(255, 0, 0, 0),
                    Colors.black,
                    Colors.white,
                  ],
                ),
              ),
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvNumber,
              isHolderNameVisible: true,
              cardType: CardType.visa,
              showBackView: showBack,
              
              onCreditCardWidgetChange: (CreditCardBrand brand) {},
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvNumber,
              onCreditCardModelChange: onCreditCardModel,
              formKey: formkey,
              isHolderNameVisible: true,
              
            ),
            
            SizedBox(
              height: 80.h,
            ),
            MaterialButton(
              height: 80.h,
              minWidth: 380.w,
              color: Colors.grey[900],
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LastPage(),
                ));
              },
              child: Text(
                "Pay Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
