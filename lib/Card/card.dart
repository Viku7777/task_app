import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  bool isloading = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Cards',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    bankName: 'Flywies Technology',
                    showBackView: isCvvFocused,
                    obscureCardNumber: true,
                    obscureCardCvv: true,
                    isHolderNameVisible: true,
                    cardBgColor: Colors.blueGrey.shade700,
                    isSwipeGestureEnabled: true,
                    onCreditCardWidgetChange:
                        (CreditCardBrand creditCardBrand) {},
                    customCardTypeIcons: <CustomCardTypeIcon>[
                      CustomCardTypeIcon(
                        cardType: CardType.rupay,
                        cardImage: Image.asset(
                          'https://wallpapers.com/images/high/golden-background-oz3jzatcjkk2ro1h.webp',
                          height: 48,
                          width: 48,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CreditCardForm(
                            formKey: formKey,
                            obscureCvv: true,
                            obscureNumber: true,
                            cardNumber: cardNumber,
                            cvvCode: cvvCode,
                            isHolderNameVisible: true,
                            isCardNumberVisible: true,
                            isExpiryDateVisible: true,
                            cardHolderName: cardHolderName,
                            expiryDate: expiryDate,
                            themeColor: Colors.blue,
                            textColor: Colors.black,
                            cardNumberDecoration: InputDecoration(
                                labelText: 'Number',
                                hintText: 'XXXX XXXX XXXX XXXX',
                                hintStyle: const TextStyle(color: Colors.black),
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                focusedBorder: border,
                                enabledBorder: border,
                                errorBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                )),
                            expiryDateDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.black),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusedBorder: border,
                              enabledBorder: border,
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              labelText: 'Expired Date',
                              hintText: 'XX/XX',
                            ),
                            cvvCodeDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.black),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusedBorder: border,
                              enabledBorder: border,
                              errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              labelText: 'CVV',
                              hintText: 'XXX',
                            ),
                            cardHolderDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.black),
                              labelStyle: const TextStyle(color: Colors.black),
                              focusedBorder: border,
                              enabledBorder: border,
                              labelText: 'Card Holder',
                            ),
                            onCreditCardModelChange: onCreditCardModel,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                // uploadtodatabase();
                              } else {
                                print('invalid!');
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: const Text(
                                'Validate & Save',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  package: 'flutter_credit_card',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void onCreditCardModel(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
