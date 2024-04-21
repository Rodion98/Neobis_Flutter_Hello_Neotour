import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:mask_text_input_formatter/mask_text_input_formatter.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/core/app/widgets/custom_elevated_button.dart";
import "package:neo_tour/features/main/domain/entity/tour_entity.dart";
import "package:neo_tour/features/place/presentation/bloc/place_bloc.dart";
import "package:neo_tour/features/place/presentation/widgets/drop_down_flags.dart";

@RoutePage()
class PlaceScreen extends StatefulWidget {
  TourEntity tourEntity;
  PlaceScreen({required this.tourEntity, super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  void initState() {
    context.read<PlaceBloc>().add(
          const PlaceEvent.loading(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController wishController = TextEditingController();

    return Scaffold(
        body: Stack(
      children: [
        _buildImage(context),
        _buildBackButton(context),
        _buIldInfo(context),
        _buildButton(context, phoneController, wishController),
      ],
    ));
  }

  Align _buildButton(
      BuildContext context, TextEditingController phoneController, TextEditingController wishController) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomElevatedButton(
          buttonStyle: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 50),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColors.primaryColor,
            ),
          ),
          text: "Book Now",
          onTap: () {
            _createBottomSheet(context, phoneController, wishController);
          },
          textstyle: AppTextStyle.s18w500Whitr,
        ),
      ),
    );
  }

  Align _buIldInfo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.7,
        decoration: BoxDecoration(
          color: AppColors.whiteText,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40, top: 24, left: 16, right: 14),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.tourEntity.name,
                style: AppTextStyle.s24w900,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text('${widget.tourEntity.city}, ${widget.tourEntity.country}', style: AppTextStyle.s12w500),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Description',
                style: AppTextStyle.s20w600Black,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, top: 12),
                child: Text(
                  widget.tourEntity.description,
                  style: AppTextStyle.s16w400,
                ),
              ),
              const Text(
                "Reviews",
                style: AppTextStyle.s20w600Black,
              ),
              BlocBuilder<PlaceBloc, PlaceState>(builder: (context, state) {
                return state.when(
                  loading: () {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  success: (reviews) => (Padding(
                    child: Text(reviews.length.toString()),
                    padding: EdgeInsetsGeometry.infinity,
                  )),
                  failure: () => Center(
                    child: Text('no'),
                  ),
                );
              }),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Positioned _buildBackButton(BuildContext context) {
    return Positioned(
      top: 30,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        label: const Text(
          'Back',
          style: AppTextStyle.s16w500Whitr,
        ),
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.whiteText,
        ),
      ),
    );
  }

  Container _buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(widget.tourEntity.image_url), fit: BoxFit.cover),
      ),
    );
  }
}

Future<dynamic> _createBottomSheet(
  BuildContext context,
  TextEditingController phoneController,
  TextEditingController wishController,
) {
  return showModalBottomSheet(
    isDismissible: false,
    context: context,
    builder: (context) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.whiteText,
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
                    const Text('Info', style: AppTextStyle.s24w400),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                        color: AppColors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const Text(
                  'To submit an application for a tour reservation, you need to fill in your information and select the number of people for the reservation',
                  style: AppTextStyle.s14w400,
                ),
                const SizedBox(height: 21),
                const Text(
                  "Phone number",
                  style: TextStyle(color: AppColors.greyText),
                ),
                _buildTextField(context, true, phoneController),
                const SizedBox(height: 21),
                const Text(
                  "Commentaries to trip",
                  style: TextStyle(color: AppColors.greyText),
                ),
                _buildTextField(context, false, wishController),
                const SizedBox(height: 23),
                const Text(
                  "Number of people",
                  style: TextStyle(color: AppColors.greyText),
                ),
                Row(children: [
                  Container(
                    width: 104,
                    decoration: BoxDecoration(color: AppColors.buttongrey, borderRadius: BorderRadius.circular(36)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButtons(Icons.remove),
                        Text(
                          '5',
                          style: AppTextStyle.s16w400,
                        ),
                        _buildButtons(Icons.add),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 24,
                      ),
                      const SizedBox(width: 7),
                      Text(
                        '5 People',
                        style: AppTextStyle.s16w400,
                      ),
                    ],
                  )
                ]),
                Spacer(),
                CustomElevatedButton(
                  buttonStyle: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(AppColors.unActiveCarousel),
                      fixedSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 50),
                      )),
                  text: "Submit",
                  textstyle: AppTextStyle.s18w500Whitr,
                  onTap: () {},
                )
              ],
            ),
          ));
    },
  );
}

GestureDetector _buildButtons(IconData icon) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(color: AppColors.activeCarousel, borderRadius: BorderRadius.circular(13.5)),
      height: 36,
      width: 29,
      child: Icon(
        icon,
        color: AppColors.whiteText,
      ),
    ),
  );
}

Container _buildTextField(BuildContext context, bool type,
    [TextEditingController? phoneController, TextEditingController? wishController]) {
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
        type ? CustomDropDown() : Container(),
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
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '### ### ###',
                filter: {"#": RegExp(r'[0-9]')},
              ),
            ],
          ),
        )
      ]),
    ),
  );
}

_createReview(Map review) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
    child: Column(
      children: [
        Row(
          children: [
            const Icon(Icons.face_5),
            const SizedBox(
              width: 8,
            ),
            Text(review['name'], style: AppTextStyle.s16w400),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(review['text'], style: AppTextStyle.s16w400),
      ],
    ),
  );
}
