.class public Lcom/android/camera/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    }
.end annotation


# static fields
.field public static final DOWN_SAMPLE_SIZE:I = 0x8

.field public static final EXIF_MODEL:Ljava/lang/String; = "persist.sys.exif.model"

.field private static final LOG_2:D

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final THUMBNAIL_SIZE:Landroid/util/Size;


# instance fields
.field private final mExif:Lcom/android/camera/exif/ExifInterface;

.field private final mExifUtilExtention:Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    .line 60
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ExifUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/ExifUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 64
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 1
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 112
    invoke-static {p1}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtentionCreator;->create(Lcom/android/camera/exif/ExifInterface;)Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExifUtilExtention:Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;

    .line 113
    return-void
.end method

.method private addCaptureResultToExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 32
    .param p1, "para"    # Landroid/hardware/Camera$Parameters;
    .param p2, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 486
    const/high16 v28, 0x447a0000    # 1000.0f

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 487
    .local v8, "MS_TO_S":Ljava/lang/Float;
    const-wide/16 v28, 0x3e8

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 488
    .local v5, "EXPOSURE_PRECISION":Ljava/lang/Long;
    const-wide/16 v28, 0x3e8

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 489
    .local v9, "SHUTTER_SPEED_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v28, 0x64

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 490
    .local v7, "F_NUMBER_PRECISION":Ljava/lang/Long;
    const-wide/16 v28, 0x64

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 491
    .local v4, "APERTURE_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v28, 0x3e8

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 494
    .local v6, "FOCAL_LENGTH_PRECISION":Ljava/lang/Long;
    if-eqz p1, :cond_4

    .line 496
    const-string v28, "cur-iso"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 505
    .local v22, "iso":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->isManualExposure()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->isISOAuto()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 506
    const-string v28, "max-iso"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 507
    .local v23, "maxISO":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 508
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 509
    .local v21, "iMaxISO":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getDetectedISO()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getDetectedISO()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 513
    .end local v21    # "iMaxISO":I
    .end local v23    # "maxISO":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 514
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 518
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    .line 519
    .local v20, "focalLength":Ljava/lang/Float;
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 522
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v27

    .line 523
    .local v27, "whiteBalance":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 524
    const-string v28, "auto"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 525
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 532
    :cond_2
    :goto_1
    const-string v28, "f-number"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 533
    .local v18, "fValue":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 534
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    .line 535
    .local v17, "fNumber":Ljava/lang/Float;
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 538
    if-eqz v17, :cond_3

    .line 539
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/util/ExifUtil;->log2(Ljava/lang/Float;)Ljava/lang/Double;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 540
    .local v10, "apertureValue":Ljava/lang/Double;
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 545
    .end local v10    # "apertureValue":Ljava/lang/Double;
    .end local v17    # "fNumber":Ljava/lang/Float;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->isManualExposure()Z

    move-result v28

    if-eqz v28, :cond_b

    const-string v28, "exposure-time"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 546
    .local v16, "exptime":Ljava/lang/String;
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 547
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v29

    div-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 548
    .local v15, "exposureTimeMs":Ljava/lang/Float;
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 553
    .end local v15    # "exposureTimeMs":Ljava/lang/Float;
    .end local v16    # "exptime":Ljava/lang/String;
    .end local v18    # "fValue":Ljava/lang/String;
    .end local v20    # "focalLength":Ljava/lang/Float;
    .end local v22    # "iso":Ljava/lang/String;
    .end local v27    # "whiteBalance":Ljava/lang/String;
    :cond_4
    const/16 v25, 0x0

    .line 554
    .local v25, "modeDefine":I
    if-eqz p2, :cond_6

    .line 556
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getFlashReq()Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Boolean;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 557
    .local v19, "flashMode":Z
    if-nez v19, :cond_c

    .line 558
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 564
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getCaptureMode()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v24

    .line 566
    .local v24, "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    const/16 v26, 0x1

    .line 567
    .local v26, "needOverrideMode":Z
    sget-object v28, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 568
    const/16 v25, 0x6

    .line 578
    :goto_4
    if-eqz v26, :cond_5

    .line 579
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 583
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v28

    sget-object v29, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 584
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 595
    .end local v19    # "flashMode":Z
    .end local v24    # "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    .end local v26    # "needOverrideMode":Z
    :cond_6
    :goto_5
    const/16 v28, 0x6

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 596
    const-string v28, "persist.capture.burst.exposures"

    const-string v29, "0"

    invoke-static/range {v28 .. v29}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 597
    .local v13, "evStr":Ljava/lang/String;
    const-string v28, ","

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 598
    .local v12, "evArray":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 599
    .local v14, "evValue":F
    array-length v0, v12

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    aget-object v11, v12, v28

    .line 600
    .local v11, "ev":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v30

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_13

    .line 601
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 605
    .end local v11    # "ev":Ljava/lang/String;
    :cond_7
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    const-wide/16 v30, 0xa

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 607
    .end local v12    # "evArray":[Ljava/lang/String;
    .end local v13    # "evStr":Ljava/lang/String;
    .end local v14    # "evValue":F
    :cond_8
    return-void

    .end local v25    # "modeDefine":I
    .restart local v21    # "iMaxISO":I
    .restart local v22    # "iso":Ljava/lang/String;
    .restart local v23    # "maxISO":Ljava/lang/String;
    :cond_9
    move-object/from16 v22, v23

    .line 509
    goto/16 :goto_0

    .line 527
    .end local v21    # "iMaxISO":I
    .end local v23    # "maxISO":Ljava/lang/String;
    .restart local v20    # "focalLength":Ljava/lang/Float;
    .restart local v27    # "whiteBalance":Ljava/lang/String;
    :cond_a
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 545
    .restart local v18    # "fValue":Ljava/lang/String;
    :cond_b
    const-string v28, "cur-exposure-time"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 560
    .end local v18    # "fValue":Ljava/lang/String;
    .end local v20    # "focalLength":Ljava/lang/Float;
    .end local v22    # "iso":Ljava/lang/String;
    .end local v27    # "whiteBalance":Ljava/lang/String;
    .restart local v19    # "flashMode":Z
    .restart local v25    # "modeDefine":I
    :cond_c
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 570
    .restart local v24    # "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    .restart local v26    # "needOverrideMode":Z
    :cond_d
    sget-object v28, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 571
    const/16 v25, 0x7

    goto/16 :goto_4

    .line 573
    :cond_e
    sget-object v28, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 574
    const/16 v25, 0x8

    goto/16 :goto_4

    .line 576
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 585
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v28

    sget-object v29, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 586
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 587
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v28

    sget-object v29, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 588
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 590
    :cond_12
    sget v28, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 599
    .end local v19    # "flashMode":Z
    .end local v24    # "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    .end local v26    # "needOverrideMode":Z
    .restart local v11    # "ev":Ljava/lang/String;
    .restart local v12    # "evArray":[Ljava/lang/String;
    .restart local v13    # "evStr":Ljava/lang/String;
    .restart local v14    # "evValue":F
    :cond_13
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6
.end method

.method private addCaptureResultToExif(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 24
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 610
    const-wide/32 v20, 0x3b9aca00

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 611
    .local v7, "NS_TO_S":Ljava/lang/Long;
    const-wide/16 v20, 0x3e8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 612
    .local v8, "SHUTTER_SPEED_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 613
    .local v6, "F_NUMBER_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 614
    .local v4, "APERTURE_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x3e8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 617
    .local v5, "FOCAL_LENGTH_PRECISION":Ljava/lang/Long;
    sget-object v19, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 618
    .local v13, "exposureTimeNs":Ljava/lang/Long;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/camera/util/ExifUtil;->ratio(Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 621
    if-eqz v13, :cond_0

    .line 622
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 623
    .local v12, "exposureTime":Ljava/lang/Double;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/camera/util/ExifUtil;->log2(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    .line 624
    .local v17, "shutterSpeedValue":Ljava/lang/Double;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .end local v12    # "exposureTime":Ljava/lang/Double;
    .end local v17    # "shutterSpeedValue":Ljava/lang/Double;
    :cond_0
    move-object/from16 v19, p1

    .line 633
    check-cast v19, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-static/range {v19 .. v19}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;

    move-result-object v16

    .line 636
    .local v16, "isoState":Ljava/lang/Integer;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 639
    sget-object v19, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 640
    .local v14, "fNumber":Ljava/lang/Float;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 643
    if-eqz v14, :cond_1

    .line 644
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/util/ExifUtil;->log2(Ljava/lang/Float;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 645
    .local v10, "apertureValue":Ljava/lang/Double;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 649
    .end local v10    # "apertureValue":Ljava/lang/Double;
    :cond_1
    sget-object v19, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 650
    .local v15, "focalLength":Ljava/lang/Float;
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 653
    sget-object v19, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 654
    .local v9, "aeState":Ljava/lang/Integer;
    if-eqz v9, :cond_4

    .line 655
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 656
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 665
    :goto_0
    sget-object v19, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 666
    .local v18, "whiteBalanceMode":Ljava/lang/Integer;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 667
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 673
    :goto_1
    sget-object v19, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->EXPOSURE_METERING:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 674
    .local v11, "exposureMetering":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    .line 675
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 686
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 690
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/util/ExifUtil;->mExifUtilExtention:Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;->appendExifInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    .line 691
    return-void

    .line 658
    .end local v11    # "exposureMetering":Ljava/lang/Integer;
    .end local v18    # "whiteBalanceMode":Ljava/lang/Integer;
    :cond_3
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 661
    :cond_4
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 669
    .restart local v18    # "whiteBalanceMode":Ljava/lang/Integer;
    :cond_5
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 677
    .restart local v11    # "exposureMetering":Ljava/lang/Integer;
    :pswitch_0
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 680
    :pswitch_1
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 683
    :pswitch_2
    sget v19, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addCaptureResultToExif(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;Ljava/lang/String;)V
    .locals 24
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
    .param p2, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 694
    const-wide/32 v20, 0x3b9aca00

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 695
    .local v7, "NS_TO_S":Ljava/lang/Long;
    const-wide/16 v20, 0x3e8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 696
    .local v8, "SHUTTER_SPEED_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 697
    .local v6, "F_NUMBER_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 698
    .local v4, "APERTURE_VALUE_PRECISION":Ljava/lang/Long;
    const-wide/16 v20, 0x3e8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 701
    .local v5, "FOCAL_LENGTH_PRECISION":Ljava/lang/Long;
    sget-object v20, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 702
    .local v13, "exposureTimeNs":Ljava/lang/Long;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/camera/util/ExifUtil;->ratio(Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 705
    if-eqz v13, :cond_0

    .line 706
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 707
    .local v12, "exposureTime":Ljava/lang/Double;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/camera/util/ExifUtil;->log2(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    .line 708
    .local v17, "shutterSpeedValue":Ljava/lang/Double;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .end local v12    # "exposureTime":Ljava/lang/Double;
    .end local v17    # "shutterSpeedValue":Ljava/lang/Double;
    :cond_0
    move-object/from16 v20, p1

    .line 717
    check-cast v20, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-static/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;

    move-result-object v16

    .line 720
    .local v16, "isoState":Ljava/lang/Integer;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 723
    sget-object v20, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 724
    .local v14, "fNumber":Ljava/lang/Float;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 727
    if-eqz v14, :cond_1

    .line 728
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/util/ExifUtil;->log2(Ljava/lang/Float;)Ljava/lang/Double;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 729
    .local v10, "apertureValue":Ljava/lang/Double;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 733
    .end local v10    # "apertureValue":Ljava/lang/Double;
    :cond_1
    sget-object v20, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 734
    .local v15, "focalLength":Ljava/lang/Float;
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 737
    sget-object v20, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 738
    .local v9, "aeState":Ljava/lang/Integer;
    if-eqz v9, :cond_5

    .line 739
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 740
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 749
    :goto_0
    sget-object v20, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 750
    .local v19, "whiteBalanceMode":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 751
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 757
    :goto_1
    sget-object v20, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->EXPOSURE_METERING:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 759
    .local v11, "exposureMetering":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    .line 760
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 771
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 776
    :cond_2
    :goto_2
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    .line 777
    .local v18, "sm":Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 778
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    .line 791
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/util/ExifUtil;->mExifUtilExtention:Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/util/ExifUtil;->mExifUtilExtention:Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;->appendExifInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    .line 793
    return-void

    .line 742
    .end local v11    # "exposureMetering":Ljava/lang/Integer;
    .end local v18    # "sm":Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
    .end local v19    # "whiteBalanceMode":Ljava/lang/Integer;
    :cond_4
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 745
    :cond_5
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 753
    .restart local v19    # "whiteBalanceMode":Ljava/lang/Integer;
    :cond_6
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 762
    .restart local v11    # "exposureMetering":Ljava/lang/Integer;
    :pswitch_0
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 765
    :pswitch_1
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 768
    :pswitch_2
    sget v20, Lcom/android/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 779
    .restart local v18    # "sm":Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
    :cond_7
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 780
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    goto/16 :goto_3

    .line 781
    :cond_8
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 782
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    goto/16 :goto_3

    .line 783
    :cond_9
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 784
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    goto/16 :goto_3

    .line 785
    :cond_a
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 786
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    goto/16 :goto_3

    .line 787
    :cond_b
    sget-object v20, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 788
    sget-object v18, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    goto/16 :goto_3

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addContentToMakerNote([BIII)V
    .locals 5
    .param p1, "fih3AInfo"    # [B
    .param p2, "startIndex"    # I
    .param p3, "size"    # I
    .param p4, "content"    # I

    .prologue
    .line 259
    const/16 v0, 0x8

    .line 260
    .local v0, "bitShift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 261
    add-int v2, p2, v1

    .line 263
    .local v2, "index":I
    mul-int/lit8 v3, v1, 0x8

    .line 264
    .local v3, "shift":I
    shr-int v4, p4, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "index":I
    .end local v3    # "shift":I
    :cond_0
    return-void
.end method

.method private addExifTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 796
    if-eqz p2, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 799
    :cond_0
    return-void
.end method

.method private addExifVersionToExif()V
    .locals 2

    .prologue
    .line 218
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const-string v1, "0220"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method private addFIHDebugInfoToExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 59
    .param p1, "para"    # Landroid/hardware/Camera$Parameters;
    .param p2, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const/16 v18, 0x36

    .line 272
    .local v18, "fihDebugSize":I
    const/16 v57, 0x36

    move/from16 v0, v57

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 273
    .local v17, "fih3AInfo":[B
    const v5, 0xffff

    .line 274
    .local v5, "FihTag":I
    const/16 v41, 0x0

    .line 277
    .local v41, "index":I
    const/16 v57, 0x2

    const v58, 0xffff

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 278
    add-int/lit8 v41, v41, 0x2

    .line 282
    const-string v57, "cct-value"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "colorTemp":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_5

    const/16 v26, 0x0

    .line 284
    .local v26, "iColorTemp":I
    :goto_1
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 285
    add-int/lit8 v41, v41, 0x2

    .line 288
    const-string v57, "awb-decision"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, "colorDecision":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_6

    const/16 v24, 0x0

    .line 290
    .local v24, "iColorDecision":I
    :goto_2
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 291
    add-int/lit8 v41, v41, 0x2

    .line 294
    const-string v57, "rg-gain"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, "colorRG":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_7

    const/16 v25, 0x0

    .line 296
    .local v25, "iColorRG":I
    :goto_3
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 297
    add-int/lit8 v41, v41, 0x2

    .line 300
    const-string v57, "bg-gain"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, "colorBG":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_8

    const/16 v23, 0x0

    .line 302
    .local v23, "iColorBG":I
    :goto_4
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 303
    add-int/lit8 v41, v41, 0x2

    .line 306
    const-string v57, "target-luma"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 307
    .local v55, "targetLuma":Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_9

    const/16 v39, 0x0

    .line 308
    .local v39, "iTargetLuma":I
    :goto_5
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 309
    add-int/lit8 v41, v41, 0x2

    .line 312
    const-string v57, "cur-luma"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, "currentLuma":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_a

    const/16 v27, 0x0

    .line 314
    .local v27, "iCurrentLuma":I
    :goto_6
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 315
    add-int/lit8 v41, v41, 0x2

    .line 318
    const-string v57, "preview-fps"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "currentFps":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_b

    const/16 v40, 0x0

    .line 320
    .local v40, "icurrentFps":I
    :goto_7
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 321
    add-int/lit8 v41, v41, 0x2

    .line 324
    const-string v57, "exp-index"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    .local v15, "expIndex":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_c

    const/16 v28, 0x0

    .line 326
    .local v28, "iExpIndex":I
    :goto_8
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 327
    add-int/lit8 v41, v41, 0x2

    .line 330
    const-string v57, "real-gain"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 331
    .local v52, "realGain":Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_d

    const/16 v57, 0x0

    :goto_9
    invoke-static/range {v57 .. v57}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 332
    .local v16, "fRealGain":Ljava/lang/Float;
    if-nez v52, :cond_e

    const/16 v36, 0x0

    .line 333
    .local v36, "iRealGain":I
    :goto_a
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 334
    add-int/lit8 v41, v41, 0x2

    .line 337
    const-string v57, "line-count"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 338
    .local v43, "lineCnt":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_f

    const/16 v30, 0x0

    .line 339
    .local v30, "iLineCnt":I
    :goto_b
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 340
    add-int/lit8 v41, v41, 0x2

    .line 343
    const-string v57, "lens-dac"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 344
    .local v42, "lensPos":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_10

    const/16 v29, 0x0

    .line 345
    .local v29, "iLenPos":I
    :goto_c
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 346
    add-int/lit8 v41, v41, 0x2

    .line 348
    const-string v57, "camera.chromatix.versions.main"

    const-string v58, "V000.0000.00"

    invoke-static/range {v57 .. v58}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "chromatixMainCam":Ljava/lang/String;
    const/16 v56, 0xc

    .line 351
    .local v56, "versionSize":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v57

    const/16 v58, 0xc

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_2

    .line 352
    const/16 v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v46, v57, -0x30

    .line 353
    .local v46, "mainDestVer":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 354
    add-int/lit8 v41, v41, 0x2

    .line 355
    const/16 v57, 0x2

    move/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v57, v57, -0x30

    move/from16 v0, v57

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v57, v0

    const/16 v58, 0x3

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0x64

    add-int v57, v57, v58

    const/16 v58, 0x5

    .line 356
    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0xa

    add-int v57, v57, v58

    const/16 v58, 0x6

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    add-int v45, v57, v58

    .line 357
    .local v45, "mainDestUp":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 358
    add-int/lit8 v41, v41, 0x2

    .line 359
    const/16 v57, 0x7

    move/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v57, v57, -0x30

    move/from16 v0, v57

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v57, v0

    const/16 v58, 0x8

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0x64

    add-int v57, v57, v58

    const/16 v58, 0xa

    .line 360
    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0xa

    add-int v57, v57, v58

    const/16 v58, 0xb

    move/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int v57, v57, v58

    add-int/lit8 v44, v57, -0x30

    .line 361
    .local v44, "mainDestDown":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 362
    add-int/lit8 v41, v41, 0x2

    .line 365
    .end local v44    # "mainDestDown":I
    .end local v45    # "mainDestUp":I
    .end local v46    # "mainDestVer":I
    :cond_2
    const-string v57, "camera.chromatix.versions.front"

    const-string v58, "V000.0000.00"

    invoke-static/range {v57 .. v58}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "chromatixFrontCam":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v57

    const/16 v58, 0xc

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_3

    .line 368
    const/16 v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v21, v57, -0x30

    .line 369
    .local v21, "frontDestVer":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 370
    add-int/lit8 v41, v41, 0x2

    .line 371
    const/16 v57, 0x2

    move/from16 v0, v57

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v57, v57, -0x30

    move/from16 v0, v57

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v57, v0

    const/16 v58, 0x3

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0x64

    add-int v57, v57, v58

    const/16 v58, 0x5

    .line 372
    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0xa

    add-int v57, v57, v58

    const/16 v58, 0x6

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    add-int v20, v57, v58

    .line 373
    .local v20, "frontDestUp":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 374
    add-int/lit8 v41, v41, 0x2

    .line 375
    const/16 v57, 0x7

    move/from16 v0, v57

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v57

    add-int/lit8 v57, v57, -0x30

    move/from16 v0, v57

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v57, v0

    const/16 v58, 0x8

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0x64

    add-int v57, v57, v58

    const/16 v58, 0xa

    .line 376
    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int/lit8 v58, v58, -0x30

    mul-int/lit8 v58, v58, 0xa

    add-int v57, v57, v58

    const/16 v58, 0xb

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v58

    add-int v57, v57, v58

    add-int/lit8 v19, v57, -0x30

    .line 377
    .local v19, "frontDestDown":I
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 378
    add-int/lit8 v41, v41, 0x2

    .line 382
    .end local v19    # "frontDestDown":I
    .end local v20    # "frontDestUp":I
    .end local v21    # "frontDestVer":I
    :cond_3
    const-string v57, "step-pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 383
    .local v54, "stepPos":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_11

    const/16 v38, 0x0

    .line 384
    .local v38, "iStepPos":I
    :goto_d
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 385
    add-int/lit8 v41, v41, 0x2

    .line 388
    const-string v57, "aux-lens-dac"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 389
    .local v50, "monoLensPos":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_12

    const/16 v34, 0x0

    .line 390
    .local v34, "iMonoLensPos":I
    :goto_e
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 391
    add-int/lit8 v41, v41, 0x2

    .line 394
    const-string v57, "aux-step-pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 395
    .local v51, "monoStepPos":Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_13

    const/16 v35, 0x0

    .line 396
    .local v35, "iMonoStepPos":I
    :goto_f
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 397
    add-int/lit8 v41, v41, 0x2

    .line 400
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getFocusState()I

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 401
    .local v6, "afState":Ljava/lang/Integer;
    if-nez v6, :cond_14

    const/16 v22, -0x1

    .line 402
    .local v22, "iAfState":I
    :goto_10
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 403
    add-int/lit8 v41, v41, 0x2

    .line 411
    const/16 v57, 0x2

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 412
    add-int/lit8 v41, v41, 0x2

    .line 415
    const-string v57, "camera.lens.main.macro"

    const-string v58, "0"

    invoke-static/range {v57 .. v58}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 416
    .local v48, "mainMacro":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_15

    const/16 v32, 0x0

    .line 417
    .local v32, "iMainMacro":I
    :goto_11
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 418
    add-int/lit8 v41, v41, 0x2

    .line 421
    const-string v57, "camera.lens.main.infinite"

    const-string v58, "0"

    invoke-static/range {v57 .. v58}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 422
    .local v47, "mainInfinite":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_16

    const/16 v31, 0x0

    .line 423
    .local v31, "iMainInfinite":I
    :goto_12
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 424
    add-int/lit8 v41, v41, 0x2

    .line 427
    const/16 v33, 0x0

    .line 428
    .local v33, "iModeDefine":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;->getCaptureMode()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v49

    .line 429
    .local v49, "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    sget-object v57, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_17

    .line 430
    const/16 v33, 0x1

    .line 438
    :cond_4
    :goto_13
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 439
    add-int/lit8 v41, v41, 0x2

    .line 442
    const-string v57, "backlight-scene-severity"

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 443
    .local v53, "sceneSeverity":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v57

    if-eqz v57, :cond_1a

    const/16 v37, 0x0

    .line 444
    .local v37, "iSceneSeverity":I
    :goto_14
    const/16 v57, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v41

    move/from16 v3, v57

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/util/ExifUtil;->addContentToMakerNote([BIII)V

    .line 456
    sget v57, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 283
    .end local v6    # "afState":Ljava/lang/Integer;
    .end local v7    # "chromatixFrontCam":Ljava/lang/String;
    .end local v8    # "chromatixMainCam":Ljava/lang/String;
    .end local v9    # "colorBG":Ljava/lang/String;
    .end local v10    # "colorDecision":Ljava/lang/String;
    .end local v11    # "colorRG":Ljava/lang/String;
    .end local v13    # "currentFps":Ljava/lang/String;
    .end local v14    # "currentLuma":Ljava/lang/String;
    .end local v15    # "expIndex":Ljava/lang/String;
    .end local v16    # "fRealGain":Ljava/lang/Float;
    .end local v22    # "iAfState":I
    .end local v23    # "iColorBG":I
    .end local v24    # "iColorDecision":I
    .end local v25    # "iColorRG":I
    .end local v26    # "iColorTemp":I
    .end local v27    # "iCurrentLuma":I
    .end local v28    # "iExpIndex":I
    .end local v29    # "iLenPos":I
    .end local v30    # "iLineCnt":I
    .end local v31    # "iMainInfinite":I
    .end local v32    # "iMainMacro":I
    .end local v33    # "iModeDefine":I
    .end local v34    # "iMonoLensPos":I
    .end local v35    # "iMonoStepPos":I
    .end local v36    # "iRealGain":I
    .end local v37    # "iSceneSeverity":I
    .end local v38    # "iStepPos":I
    .end local v39    # "iTargetLuma":I
    .end local v40    # "icurrentFps":I
    .end local v42    # "lensPos":Ljava/lang/String;
    .end local v43    # "lineCnt":Ljava/lang/String;
    .end local v47    # "mainInfinite":Ljava/lang/String;
    .end local v48    # "mainMacro":Ljava/lang/String;
    .end local v49    # "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    .end local v50    # "monoLensPos":Ljava/lang/String;
    .end local v51    # "monoStepPos":Ljava/lang/String;
    .end local v52    # "realGain":Ljava/lang/String;
    .end local v53    # "sceneSeverity":Ljava/lang/String;
    .end local v54    # "stepPos":Ljava/lang/String;
    .end local v55    # "targetLuma":Ljava/lang/String;
    .end local v56    # "versionSize":I
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v26

    goto/16 :goto_1

    .line 289
    .restart local v10    # "colorDecision":Ljava/lang/String;
    .restart local v26    # "iColorTemp":I
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_2

    .line 295
    .restart local v11    # "colorRG":Ljava/lang/String;
    .restart local v24    # "iColorDecision":I
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_3

    .line 301
    .restart local v9    # "colorBG":Ljava/lang/String;
    .restart local v25    # "iColorRG":I
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto/16 :goto_4

    .line 307
    .restart local v23    # "iColorBG":I
    .restart local v55    # "targetLuma":Ljava/lang/String;
    :cond_9
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v39

    goto/16 :goto_5

    .line 313
    .restart local v14    # "currentLuma":Ljava/lang/String;
    .restart local v39    # "iTargetLuma":I
    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto/16 :goto_6

    .line 319
    .restart local v13    # "currentFps":Ljava/lang/String;
    .restart local v27    # "iCurrentLuma":I
    :cond_b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v40

    goto/16 :goto_7

    .line 325
    .restart local v15    # "expIndex":Ljava/lang/String;
    .restart local v40    # "icurrentFps":I
    :cond_c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v28

    goto/16 :goto_8

    .line 331
    .restart local v28    # "iExpIndex":I
    .restart local v52    # "realGain":Ljava/lang/String;
    :cond_d
    invoke-static/range {v52 .. v52}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Float;->floatValue()F

    move-result v57

    goto/16 :goto_9

    .line 332
    .restart local v16    # "fRealGain":Ljava/lang/Float;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v57

    const/high16 v58, 0x447a0000    # 1000.0f

    mul-float v57, v57, v58

    move/from16 v0, v57

    float-to-int v0, v0

    move/from16 v36, v0

    goto/16 :goto_a

    .line 338
    .restart local v36    # "iRealGain":I
    .restart local v43    # "lineCnt":Ljava/lang/String;
    :cond_f
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_b

    .line 344
    .restart local v30    # "iLineCnt":I
    .restart local v42    # "lensPos":Ljava/lang/String;
    :cond_10
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v29

    goto/16 :goto_c

    .line 383
    .restart local v7    # "chromatixFrontCam":Ljava/lang/String;
    .restart local v8    # "chromatixMainCam":Ljava/lang/String;
    .restart local v29    # "iLenPos":I
    .restart local v54    # "stepPos":Ljava/lang/String;
    .restart local v56    # "versionSize":I
    :cond_11
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v38

    goto/16 :goto_d

    .line 389
    .restart local v38    # "iStepPos":I
    .restart local v50    # "monoLensPos":Ljava/lang/String;
    :cond_12
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_e

    .line 395
    .restart local v34    # "iMonoLensPos":I
    .restart local v51    # "monoStepPos":Ljava/lang/String;
    :cond_13
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v35

    goto/16 :goto_f

    .line 401
    .restart local v6    # "afState":Ljava/lang/Integer;
    .restart local v35    # "iMonoStepPos":I
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_10

    .line 416
    .restart local v22    # "iAfState":I
    .restart local v48    # "mainMacro":Ljava/lang/String;
    :cond_15
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_11

    .line 422
    .restart local v32    # "iMainMacro":I
    .restart local v47    # "mainInfinite":Ljava/lang/String;
    :cond_16
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_12

    .line 431
    .restart local v31    # "iMainInfinite":I
    .restart local v33    # "iModeDefine":I
    .restart local v49    # "mode":Lcom/android/ex/camera2/portability/CaptureIntent;
    :cond_17
    sget-object v57, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_18

    .line 432
    const/16 v33, 0x2

    goto/16 :goto_13

    .line 433
    :cond_18
    sget-object v57, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_19

    .line 434
    const/16 v33, 0x3

    goto/16 :goto_13

    .line 435
    :cond_19
    sget-object v57, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_4

    .line 436
    const/16 v33, 0x4

    goto/16 :goto_13

    .line 443
    .restart local v53    # "sceneSeverity":Ljava/lang/String;
    :cond_1a
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v37

    goto/16 :goto_14
.end method

.method private addFIHMakeAndModelToExif()V
    .locals 5

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v2, v3}, Lcom/android/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "make":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 246
    :cond_0
    sget-object v2, Lcom/android/camera/util/ExifUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFIHMakeAndModelToExif TAG_MAKE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-direct {p0, v2, v0}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 248
    const-string v2, "persist.sys.exif.model"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "model":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    sget-object v1, Lcom/android/camera/product_utils/ProductUtil;->BUILD_NICKNAME:Ljava/lang/String;

    .line 252
    :cond_1
    sget-object v2, Lcom/android/camera/util/ExifUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFIHMakeAndModelToExif EXIF_MODEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-direct {p0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 256
    return-void
.end method

.method private addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V
    .locals 4
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 469
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 470
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 471
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 472
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 473
    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 472
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 474
    return-void
.end method

.method private addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V
    .locals 4
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p2, "scale"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 478
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 479
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 480
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    iget v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 481
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 482
    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 481
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 483
    return-void
.end method

.method private addMakeAndModelToExif()V
    .locals 2

    .prologue
    .line 463
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 464
    sget v0, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method private addTimestampToExif()V
    .locals 10

    .prologue
    .line 222
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 223
    .local v0, "MS_TO_S":Ljava/lang/Long;
    const-string v1, "000"

    .line 225
    .local v1, "subSecondFormat":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 226
    .local v4, "timestampMs":Ljava/lang/Long;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 227
    .local v5, "timezone":Ljava/util/TimeZone;
    iget-object v6, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 228
    iget-object v6, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 229
    iget-object v6, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/camera/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 231
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 232
    .local v2, "subSeconds":Ljava/lang/Long;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "000"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "subSecondsString":Ljava/lang/String;
    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-direct {p0, v6, v3}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 234
    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-direct {p0, v6, v3}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 235
    sget v6, Lcom/android/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-direct {p0, v6, v3}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method private log2(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 830
    if-eqz p1, :cond_0

    .line 831
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log2(Ljava/lang/Float;)Ljava/lang/Double;
    .locals 4
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 823
    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/util/ExifUtil;->LOG_2:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ratio(Ljava/lang/Long;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;
    .locals 6
    .param p1, "numerator"    # Ljava/lang/Long;
    .param p2, "denominator"    # Ljava/lang/Long;

    .prologue
    .line 802
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 803
    new-instance v0, Lcom/android/camera/exif/Rational;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 805
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;
    .locals 6
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "precision"    # Ljava/lang/Long;

    .prologue
    .line 816
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 817
    new-instance v0, Lcom/android/camera/exif/Rational;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 819
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rational(Ljava/lang/Float;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;
    .locals 6
    .param p1, "value"    # Ljava/lang/Float;
    .param p2, "precision"    # Ljava/lang/Long;

    .prologue
    .line 809
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 810
    new-instance v0, Lcom/android/camera/exif/Rational;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 812
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLocationToExif(Landroid/location/Location;)V
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 188
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 190
    .local v0, "ALTITUDE_PRECISION":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/camera/exif/ExifInterface;->addGpsTags(DD)Z

    .line 191
    iget-object v4, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 193
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    .line 195
    .local v2, "altitude":D
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/android/camera/util/ExifUtil;->rational(Ljava/lang/Double;Ljava/lang/Long;)Lcom/android/camera/exif/Rational;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 196
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    const/4 v1, 0x1

    .line 198
    .local v1, "altitudeRef":S
    :goto_0
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/util/ExifUtil;->addExifTag(ILjava/lang/Object;)V

    .line 200
    .end local v1    # "altitudeRef":S
    .end local v2    # "altitude":D
    :cond_0
    return-void

    .line 196
    .restart local v2    # "altitude":D
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addThumbnail([BZ)V
    .locals 8
    .param p1, "originalJpegData"    # [B
    .param p2, "hwRotate"    # Z

    .prologue
    .line 203
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {p1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "bmOrig":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 208
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 209
    .local v3, "height":I
    if-le v5, v3, :cond_2

    sget-object v6, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 210
    .local v4, "w":I
    :goto_1
    if-le v5, v3, :cond_3

    sget-object v6, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 211
    .local v2, "h":I
    :goto_2
    invoke-static {v0, v4, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    .local v1, "exifThumbnail":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v6, v1}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 209
    .end local v1    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "h":I
    .end local v4    # "w":I
    :cond_2
    sget-object v6, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v4

    goto :goto_1

    .line 210
    .restart local v4    # "w":I
    :cond_3
    sget-object v6, Lcom/android/camera/util/ExifUtil;->THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_2
.end method

.method public populateExif()Lcom/android/camera/exif/ExifInterface;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addFIHMakeAndModelToExif()V

    .line 179
    iget-object v0, p0, Lcom/android/camera/util/ExifUtil;->mExif:Lcom/android/camera/exif/ExifInterface;

    return-object v0
.end method

.method public populateExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 0
    .param p1, "para"    # Landroid/hardware/Camera$Parameters;
    .param p2, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addExifVersionToExif()V

    .line 118
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addTimestampToExif()V

    .line 119
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addFIHMakeAndModelToExif()V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/ExifUtil;->addCaptureResultToExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/ExifUtil;->addFIHDebugInfoToExif(Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 123
    return-void
.end method

.method public populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "image":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;>;"
    .local p2, "captureResult":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;>;"
    .local p3, "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addExifVersionToExif()V

    .line 136
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addTimestampToExif()V

    .line 137
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addFIHMakeAndModelToExif()V

    .line 138
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0, v0}, Lcom/android/camera/util/ExifUtil;->addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-direct {p0, v0}, Lcom/android/camera/util/ExifUtil;->addCaptureResultToExif(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    .line 144
    :cond_1
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 147
    :cond_2
    return-void
.end method

.method public populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "image":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;>;"
    .local p2, "captureResult":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;>;"
    .local p3, "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    .local p4, "sceneMode":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addExifVersionToExif()V

    .line 152
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addTimestampToExif()V

    .line 153
    invoke-direct {p0}, Lcom/android/camera/util/ExifUtil;->addFIHMakeAndModelToExif()V

    .line 154
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;I)V

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {p4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/util/ExifUtil;->addCaptureResultToExif(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 176
    :cond_2
    return-void

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0, v0}, Lcom/android/camera/util/ExifUtil;->addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0, v0}, Lcom/android/camera/util/ExifUtil;->addImageDataToExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V

    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-direct {p0, v0}, Lcom/android/camera/util/ExifUtil;->addCaptureResultToExif(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    goto :goto_1
.end method
