import 'package:ecommerce/core/assets/assets.gen.dart';
import 'package:ecommerce/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Function(DateTime) onDateSelected;

  const CustomDateTimePicker({
    super.key,
    required this.labelText,
    required this.controller,
    required this.onDateSelected,
  });

  Future<void> _selectDateTime(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        // Gabungkan tanggal dan waktu
        DateTime selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        // Format hasilnya
        controller.text =
            "${selectedDateTime.year}-${selectedDateTime.month.toString().padLeft(2, '0')}-${selectedDateTime.day.toString().padLeft(2, '0')} "
            "${selectedDateTime.hour.toString().padLeft(2, '0')}:${selectedDateTime.minute.toString().padLeft(2, '0')}";

        onDateSelected(selectedDateTime);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label di luar TextField
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.textBlack2,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          readOnly: true,
          onTap: () => _selectDateTime(context),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                width: 24.0,
                height: 24.0,
                child: Image.asset(
                  Assets.icons.videoTime.path,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minWidth: 40,
              minHeight: 40,
            ),
            hintText: "Pilih Tanggal",
            hintStyle: const TextStyle(
              fontSize: 14,
              color: AppColors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  const BorderSide(color: AppColors.grey), // Warna border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: AppColors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide:
                  const BorderSide(color: AppColors.grey), // Warna border fokus
            ),
          ),
        ),
      ],
    );
  }
}
