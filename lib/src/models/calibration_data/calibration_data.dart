import 'dart:typed_data';

import 'package:cv_camera/src/utils/converters/float64_list_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cg_point.dart';
import 'cg_size.dart';
import 'cg_vector.dart';

part 'calibration_data.freezed.dart';
part 'calibration_data.g.dart';

@freezed
class CvCameraCalibrationData with _$CvCameraCalibrationData {
  factory CvCameraCalibrationData.fromJson(Map<String, dynamic> json) =>
      _$CvCameraCalibrationDataFromJson(json);

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, anyMap: true)
  const factory CvCameraCalibrationData({
    required double pixelSize,
    required List<CGVector> intrinsicMatrix,
    required List<CGVector> extrinsicMatrix,
    required CGSize intrinsicMatrixReferenceDimensions,
    @Float64ListConverter() required Float64List lensDistortionLookupTable,
    required CGPoint lensDistortionCenter,
  }) = _CvCameraCalibrationData;
}
