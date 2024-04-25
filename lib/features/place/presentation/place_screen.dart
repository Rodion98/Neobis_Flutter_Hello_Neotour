import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:neo_tour/core/app/io_ui.dart";
import "package:neo_tour/core/app/widgets/custom_elevated_button.dart";
import "package:neo_tour/features/main/domain/entity/tour_entity.dart";
import "package:neo_tour/features/place/presentation/bloc/place_bloc/place_bloc.dart";
import "package:neo_tour/features/place/presentation/widgets/bottom_sheet.dart";
import "package:neo_tour/features/place/presentation/widgets/info_widget.dart";

@RoutePage()
class PlaceScreen extends StatefulWidget {
  final TourEntity tourEntity;
  const PlaceScreen({required this.tourEntity, super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  void initState() {
    context.read<PlaceBloc>().add(
          PlaceEvent.loading(id: widget.tourEntity.id!),
        );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _buildImage(context),
        _buildBackButton(context),
        InfoWidget(
          widget: widget,
        ),
        _buildButton(widget.tourEntity),
      ],
    ));
  }

  Align _buildButton(TourEntity tourEntity) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomElevatedButton(
          text: "Book Now",
          onTap: () {
            showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) {
                return BookingBottomSheet(
                  id: tourEntity.id,
                );
              },
            );
          },
        ),
      ),
    );
  }

  Container _buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(widget.tourEntity.image_url!), fit: BoxFit.cover),
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
}
