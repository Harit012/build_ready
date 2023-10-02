import 'package:flutter/material.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({super.key});

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final String bolckId = '101';
  final _buyerNameController = TextEditingController();
  final _buyerNumberController = TextEditingController();
  final _buyerPaymentController = TextEditingController();
  final _totalPaymentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: 800,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 40, 16, keyboardSpace + 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Fill the form  ',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'OpenSanas',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close_rounded),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Block no : ',
                        ),
                        const SizedBox(width: 50),
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            readOnly: true,
                            initialValue: bolckId,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _buyerNameController,
                      maxLength: 25,
                      decoration: const InputDecoration(
                        label: Text(
                          'Buyer Name',
                        ),
                      ),
                    ),
                    TextField(
                      controller: _buyerNumberController,
                      maxLength: 20,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text(
                          "Buyer's Mobile Number",
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextField(
                            controller: _buyerPaymentController,
                            maxLength: 20,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              label: Text(
                                'Token Amount',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width: 150,
                          child: TextField(
                            controller: _totalPaymentController,
                            maxLength: 20,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              label: Text(
                                'Total Amount',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 154,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFA28B85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 154,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFA28B85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 1.25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
