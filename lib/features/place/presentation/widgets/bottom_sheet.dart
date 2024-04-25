import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neo_tour/core/app/io_ui.dart';
import 'package:neo_tour/core/app/widgets/custom_elevated_button.dart';
import 'package:neo_tour/features/main/data/models/tour/tour.dart';
import 'package:neo_tour/features/place/data/models/booking/booking_model.dart';
import 'package:neo_tour/features/place/presentation/bloc/booking_bloc/booking_bloc_bloc.dart';
import 'package:neo_tour/features/place/presentation/widgets/counter_button.dart';
import 'package:neo_tour/features/place/presentation/widgets/drop_down_flags.dart';

class BookingBottomSheet extends StatefulWidget {
  const BookingBottomSheet({super.key, required this.id});

  final int? id;

  @override
  State<BookingBottomSheet> createState() => _BookingBottomSheetState();
}

class _BookingBottomSheetState extends State<BookingBottomSheet> {
  @override
  void dispose() {
    super.dispose();
  }

  final phoneController = TextEditingController();
  final wishController = TextEditingController();
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Info', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const Text(
              'To submit an application for a tour reservation, you need to fill in your information and select the number of people for the reservation',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 21),
            const Text(
              "Phone number",
              style: TextStyle(color: Colors.grey),
            ),
            _buildTextField(context, true, phoneController),
            const SizedBox(height: 21),
            const Text(
              "Commentaries to trip",
              style: TextStyle(color: Colors.grey),
            ),
            _buildTextField(context, false, wishController),
            const SizedBox(height: 23),
            const Text(
              "Number of people",
              style: TextStyle(color: Colors.grey),
            ),
            Row(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CounterButton(
                    count: _counter,
                    setNewValue: (countVal) {
                      setState(() {
                        _counter = countVal;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  const Icon(Icons.person_outline_rounded),
                  Text('$_counter People', style: AppTextStyle.s16w500Black),
                ],
              ),
            ]),
            const Spacer(),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: CustomElevatedButton(
                onTap: () {
                  BookingModel model = BookingModel(
                      number_of_tourists: _counter,
                      phone_number: phoneController.text,
                      comment: wishController.text,
                      tourModel: TourModel(id: widget.id));

                  context.read<BookingBlocBloc>().add(
                        BookingBlocEvent.post(bookingModel: model),
                      );
                  // _buildDialog(context);
                },
                text: "Submit",
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> _buildDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Your trip has been booked!',
            textAlign: TextAlign.center,
            style: AppTextStyle.s24w400.copyWith(fontWeight: FontWeight.w700),
          ),
          actions: <Widget>[
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: CustomElevatedButton(
                text: "Submit",
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        );
      },
    );
  }

  Container _buildTextField(
    BuildContext context,
    bool type, [
    TextEditingController? phoneController,
    TextEditingController? wishController,
  ]) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppColors.greyTextField),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13, left: 16, top: 13),
        child: Row(children: [
          type ? const CustomDropDown() : Container(),
          type ? const Text("+996 ", style: AppTextStyle.s16w400) : Container(),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: type ? '_ _ _  _ _ _  _ _ _' : 'Write your wishes to trip...',
                hintStyle: AppTextStyle.s16w400.copyWith(color: AppColors.greyText),
                filled: true,
                isDense: true,
                isCollapsed: true,
                fillColor: Colors.transparent,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(bottom: 4),
              ),
              keyboardType: type ? TextInputType.phone : TextInputType.text,
              controller: type ? phoneController : wishController,
              inputFormatters: type
                  ? [
                      MaskTextInputFormatter(
                        mask: '### ### ###',
                        filter: {
                          "#": RegExp(r'[0-9]'),
                        },
                      ),
                    ]
                  : [
                      MaskTextInputFormatter(),
                    ],
            ),
          )
        ]),
      ),
    );
  }
}
