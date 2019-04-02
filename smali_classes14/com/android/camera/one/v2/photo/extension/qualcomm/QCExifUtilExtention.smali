.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;
.super Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
.source "QCExifUtilExtention.java"


# instance fields
.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final mExif:Lcom/android/camera/exif/ExifInterface;


# direct methods
.method public constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 2
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;-><init>()V

    .line 23
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "QCExifUtilExt"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 26
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 27
    return-void
.end method

.method private addContentToMakerNote([BIII)V
    .locals 5
    .param p1, "fih3AInfo"    # [B
    .param p2, "startIndex"    # I
    .param p3, "size"    # I
    .param p4, "content"    # I

    .prologue
    .line 274
    const/16 v0, 0x8

    .line 275
    .local v0, "bitShift":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 276
    add-int v2, p2, v1

    .line 278
    .local v2, "index":I
    mul-int/lit8 v3, v1, 0x8

    .line 279
    .local v3, "shift":I
    shr-int v4, p4, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
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
    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 287
    :cond_0
    return-void
.end method

.method private appendDebugInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 62
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    const/16 v30, 0x50

    .line 41
    .local v30, "fihDebugSize":I
    const/16 v55, 0x50

    move/from16 v0, v55

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 42
    .local v29, "fih3AInfo":[B
    const v9, 0xffff

    .line 43
    .local v9, "FihTag":I
    const/16 v38, 0x0

    .line 46
    .local v38, "index":I
    const/16 v55, 0x2

    const v56, 0xffff

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 47
    add-int/lit8 v38, v38, 0x2

    .line 50
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_CCT_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 51
    .local v25, "colorTemp":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v25, :cond_1

    const/16 v55, 0x0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 52
    add-int/lit8 v38, v38, 0x2

    .line 55
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AWB_DECISION:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 56
    .local v23, "colorDecision":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v23, :cond_2

    const/16 v55, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 57
    add-int/lit8 v38, v38, 0x2

    .line 60
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_RG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    .line 61
    .local v24, "colorRG":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v24, :cond_3

    const/16 v55, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 62
    add-int/lit8 v38, v38, 0x2

    .line 65
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_BG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    .line 66
    .local v22, "colorBG":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v22, :cond_4

    const/16 v55, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 67
    add-int/lit8 v38, v38, 0x2

    .line 70
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_TARGET_LUMA:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    .line 71
    .local v53, "targetLuma":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v53, :cond_5

    const/16 v55, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 72
    add-int/lit8 v38, v38, 0x2

    .line 75
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_CUT_LUMA:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Float;

    .line 76
    .local v27, "currentLuma":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v27, :cond_6

    const/16 v55, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 77
    add-int/lit8 v38, v38, 0x2

    .line 80
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_PREVIEW_FPS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    .line 81
    .local v26, "currentFps":Ljava/lang/Double;
    const/16 v56, 0x2

    if-nez v26, :cond_7

    const/16 v55, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 82
    add-int/lit8 v38, v38, 0x2

    .line 85
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_EXP_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    .line 86
    .local v28, "expIndex":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v28, :cond_8

    const/16 v55, 0x0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 87
    add-int/lit8 v38, v38, 0x2

    .line 90
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_REAL_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Float;

    .line 91
    .local v50, "realGain":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v50, :cond_9

    const/16 v55, 0x0

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 92
    add-int/lit8 v38, v38, 0x2

    .line 95
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_LINECOUNT:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 96
    .local v40, "lineCnt":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v40, :cond_a

    const/16 v55, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 97
    add-int/lit8 v38, v38, 0x2

    .line 100
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_LENSPOS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 101
    .local v39, "lensPos":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v39, :cond_b

    const/16 v55, 0x0

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 102
    add-int/lit8 v38, v38, 0x2

    .line 104
    const-string v55, "camera.chromatix.versions.main"

    const-string v56, "V000.0000.00"

    invoke-static/range {v55 .. v56}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 106
    .local v21, "chromatixMainCam":Ljava/lang/String;
    const/16 v54, 0xc

    .line 107
    .local v54, "versionSize":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xc

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_c

    .line 108
    const/16 v55, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v44, v55, -0x30

    .line 109
    .local v44, "mainDestVer":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 110
    add-int/lit8 v38, v38, 0x2

    .line 111
    const/16 v55, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v55, v55, -0x30

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    const/16 v56, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0x64

    add-int v55, v55, v56

    const/16 v56, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0xa

    add-int v55, v55, v56

    const/16 v56, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    add-int v43, v55, v56

    .line 112
    .local v43, "mainDestUp":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 113
    add-int/lit8 v38, v38, 0x2

    .line 115
    const/16 v55, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v55, v55, -0x30

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    const/16 v56, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0x64

    add-int v55, v55, v56

    const/16 v56, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0xa

    add-int v55, v55, v56

    const/16 v56, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int v55, v55, v56

    add-int/lit8 v42, v55, -0x30

    .line 116
    .local v42, "mainDestDown":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 117
    add-int/lit8 v38, v38, 0x2

    .line 127
    .end local v42    # "mainDestDown":I
    .end local v43    # "mainDestUp":I
    .end local v44    # "mainDestVer":I
    :goto_b
    const-string v55, "camera.chromatix.versions.front"

    const-string v56, "V000.0000.00"

    invoke-static/range {v55 .. v56}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 128
    .local v20, "chromatixFrontCam":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xc

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_d

    .line 129
    const/16 v55, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v35, v55, -0x30

    .line 130
    .local v35, "frontDestVer":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 131
    add-int/lit8 v38, v38, 0x2

    .line 133
    const/16 v55, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v55, v55, -0x30

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    const/16 v56, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0x64

    add-int v55, v55, v56

    const/16 v56, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0xa

    add-int v55, v55, v56

    const/16 v56, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    add-int v34, v55, v56

    .line 134
    .local v34, "frontDestUp":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 135
    add-int/lit8 v38, v38, 0x2

    .line 137
    const/16 v55, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    add-int/lit8 v55, v55, -0x30

    move/from16 v0, v55

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v55, v0

    const/16 v56, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0x64

    add-int v55, v55, v56

    const/16 v56, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int/lit8 v56, v56, -0x30

    mul-int/lit8 v56, v56, 0xa

    add-int v55, v55, v56

    const/16 v56, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v56

    add-int v55, v55, v56

    add-int/lit8 v33, v55, -0x30

    .line 138
    .local v33, "frontDestDown":I
    const/16 v55, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 139
    add-int/lit8 v38, v38, 0x2

    .line 150
    .end local v33    # "frontDestDown":I
    .end local v34    # "frontDestUp":I
    .end local v35    # "frontDestVer":I
    :goto_c
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_STEPPOS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    .line 151
    .local v52, "stepPos":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v52, :cond_e

    const/16 v55, 0x0

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 152
    add-int/lit8 v38, v38, 0x2

    .line 154
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MONO_LENSPOS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Integer;

    .line 155
    .local v48, "monoLensPos":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v48, :cond_f

    const/16 v55, 0x0

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 156
    add-int/lit8 v38, v38, 0x2

    .line 158
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MONO_STEPPOS:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    .line 159
    .local v49, "monoStepPos":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v49, :cond_10

    const/16 v55, 0x0

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 160
    add-int/lit8 v38, v38, 0x2

    .line 162
    sget-object v55, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 163
    .local v12, "afState":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v12, :cond_11

    const/16 v55, -0x1

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 164
    add-int/lit8 v38, v38, 0x2

    .line 166
    const/16 v47, 0x0

    .line 167
    .local v47, "monoAfState":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v47, :cond_12

    const/16 v55, -0x1

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 168
    add-int/lit8 v38, v38, 0x2

    .line 170
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MAIN_MARCO:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 171
    .local v11, "MainEEMarcoDac":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v11, :cond_13

    const/16 v55, -0x1

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 172
    add-int/lit8 v38, v38, 0x2

    .line 174
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MAIN_INFINITY:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 175
    .local v10, "MainEEINFDac":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v10, :cond_14

    const/16 v55, -0x1

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 176
    add-int/lit8 v38, v38, 0x2

    .line 180
    const/16 v56, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    move-object/from16 v55, v0

    if-nez v55, :cond_15

    const/16 v55, 0x0

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 181
    add-int/lit8 v38, v38, 0x2

    .line 183
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_BACKLIGHT_SEVERITY:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 184
    .local v8, "Backlight_Severity":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v8, :cond_16

    const/16 v55, 0x0

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 185
    add-int/lit8 v38, v38, 0x2

    .line 187
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AUX_MARCO:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 188
    .local v7, "AUXMarcoDac":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v7, :cond_17

    const/16 v55, 0x0

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 189
    add-int/lit8 v38, v38, 0x2

    .line 191
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AUX_INFINITY:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 192
    .local v6, "AUXEEINFDac":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v6, :cond_18

    const/16 v55, 0x0

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 193
    add-int/lit8 v38, v38, 0x2

    .line 195
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 196
    .local v18, "af_total_time":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v18, :cond_19

    const/16 v55, 0x0

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 197
    add-int/lit8 v38, v38, 0x2

    .line 199
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_ROI_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 200
    .local v15, "af_roi_type":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v15, :cond_1a

    const/16 v55, 0x0

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 201
    add-int/lit8 v38, v38, 0x2

    .line 203
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_ROI_X:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 204
    .local v16, "af_roi_x":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v16, :cond_1b

    const/16 v55, 0x0

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 205
    add-int/lit8 v38, v38, 0x2

    .line 207
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_ROI_Y:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 208
    .local v17, "af_roi_y":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v17, :cond_1c

    const/16 v55, 0x0

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 209
    add-int/lit8 v38, v38, 0x2

    .line 211
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_ROI_DX:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 212
    .local v13, "af_roi_dx":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v13, :cond_1d

    const/16 v55, 0x0

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 213
    add-int/lit8 v38, v38, 0x2

    .line 215
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_AF_ROI_DY:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 216
    .local v14, "af_roi_dy":Ljava/lang/Integer;
    const/16 v56, 0x2

    if-nez v14, :cond_1e

    const/16 v55, 0x0

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 217
    add-int/lit8 v38, v38, 0x2

    .line 219
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_LUX_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Float;

    .line 220
    .local v41, "lux_index":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v41, :cond_1f

    const/16 v55, 0x0

    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 221
    add-int/lit8 v38, v38, 0x2

    .line 223
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MAIN_RG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Float;

    .line 224
    .local v46, "main_rg_gain":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v46, :cond_20

    const/16 v55, 0x0

    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 225
    add-int/lit8 v38, v38, 0x2

    .line 227
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_MAIN_BG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Float;

    .line 228
    .local v45, "main_bg_gain":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v45, :cond_21

    const/16 v55, 0x0

    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 229
    add-int/lit8 v38, v38, 0x2

    .line 231
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_FRONT_RG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Float;

    .line 232
    .local v37, "front_rg_gain":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v37, :cond_22

    const/16 v55, 0x0

    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 233
    add-int/lit8 v38, v38, 0x2

    .line 235
    sget-object v55, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_FRONT_BG_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Float;

    .line 236
    .local v36, "front_bg_gain":Ljava/lang/Float;
    const/16 v56, 0x2

    if-nez v36, :cond_23

    const/16 v55, 0x0

    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v56

    move/from16 v4, v55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 237
    add-int/lit8 v38, v38, 0x2

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    move-object/from16 v55, v0

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "TAG_MAKER_NOTE = colorTemp: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", colorDecision: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", colorRG: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", colorBG: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", targetLuma: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", currentLuma: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", currentFps: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", expIndex: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", realGain: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", lineCnt: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", lensPos: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", chromatixMainCam: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", chromatixFrontCam: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", stepPos: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", monoLensPos: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", monoStepPos: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", afState: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", monoAfState: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    sget v55, Lcom/android/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    move-object/from16 v0, p0

    move/from16 v1, v55

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addExifTag(ILjava/lang/Object;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    move-object/from16 v55, v0

    if-nez v55, :cond_24

    const-string v19, ""

    .line 262
    .local v19, "appInfo":Ljava/lang/String;
    :goto_23
    const-string v32, ""

    .line 263
    .local v32, "focVersion":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v31

    .line 264
    .local v31, "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    if-eqz v31, :cond_0

    .line 265
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "V"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v31 .. v31}, Lcom/android/camera/util/FihOpticalConfiguration;->getOptical_config_version()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 268
    :cond_0
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v56, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "1.0"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 269
    .local v51, "softwareInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->TAG:Lcom/android/camera/debug/Log$Tag;

    move-object/from16 v55, v0

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "TAG_SOFTWARE = "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    sget v55, Lcom/android/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    move-object/from16 v0, p0

    move/from16 v1, v55

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addExifTag(ILjava/lang/Object;)V

    .line 271
    return-void

    .line 51
    .end local v6    # "AUXEEINFDac":Ljava/lang/Integer;
    .end local v7    # "AUXMarcoDac":Ljava/lang/Integer;
    .end local v8    # "Backlight_Severity":Ljava/lang/Integer;
    .end local v10    # "MainEEINFDac":Ljava/lang/Integer;
    .end local v11    # "MainEEMarcoDac":Ljava/lang/Integer;
    .end local v12    # "afState":Ljava/lang/Integer;
    .end local v13    # "af_roi_dx":Ljava/lang/Integer;
    .end local v14    # "af_roi_dy":Ljava/lang/Integer;
    .end local v15    # "af_roi_type":Ljava/lang/Integer;
    .end local v16    # "af_roi_x":Ljava/lang/Integer;
    .end local v17    # "af_roi_y":Ljava/lang/Integer;
    .end local v18    # "af_total_time":Ljava/lang/Integer;
    .end local v19    # "appInfo":Ljava/lang/String;
    .end local v20    # "chromatixFrontCam":Ljava/lang/String;
    .end local v21    # "chromatixMainCam":Ljava/lang/String;
    .end local v22    # "colorBG":Ljava/lang/Float;
    .end local v23    # "colorDecision":Ljava/lang/Integer;
    .end local v24    # "colorRG":Ljava/lang/Float;
    .end local v26    # "currentFps":Ljava/lang/Double;
    .end local v27    # "currentLuma":Ljava/lang/Float;
    .end local v28    # "expIndex":Ljava/lang/Float;
    .end local v31    # "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    .end local v32    # "focVersion":Ljava/lang/String;
    .end local v36    # "front_bg_gain":Ljava/lang/Float;
    .end local v37    # "front_rg_gain":Ljava/lang/Float;
    .end local v39    # "lensPos":Ljava/lang/Integer;
    .end local v40    # "lineCnt":Ljava/lang/Integer;
    .end local v41    # "lux_index":Ljava/lang/Float;
    .end local v45    # "main_bg_gain":Ljava/lang/Float;
    .end local v46    # "main_rg_gain":Ljava/lang/Float;
    .end local v47    # "monoAfState":Ljava/lang/Integer;
    .end local v48    # "monoLensPos":Ljava/lang/Integer;
    .end local v49    # "monoStepPos":Ljava/lang/Integer;
    .end local v50    # "realGain":Ljava/lang/Float;
    .end local v51    # "softwareInfo":Ljava/lang/String;
    .end local v52    # "stepPos":Ljava/lang/Integer;
    .end local v53    # "targetLuma":Ljava/lang/Integer;
    .end local v54    # "versionSize":I
    :cond_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_0

    .line 56
    .restart local v23    # "colorDecision":Ljava/lang/Integer;
    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_1

    .line 61
    .restart local v24    # "colorRG":Ljava/lang/Float;
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_2

    .line 66
    .restart local v22    # "colorBG":Ljava/lang/Float;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_3

    .line 71
    .restart local v53    # "targetLuma":Ljava/lang/Integer;
    :cond_5
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_4

    .line 76
    .restart local v27    # "currentLuma":Ljava/lang/Float;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const/high16 v57, 0x3f800000    # 1.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_5

    .line 81
    .restart local v26    # "currentFps":Ljava/lang/Double;
    :cond_7
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v58

    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    mul-double v58, v58, v60

    move-wide/from16 v0, v58

    double-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_6

    .line 86
    .restart local v28    # "expIndex":Ljava/lang/Float;
    :cond_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const/high16 v57, 0x3f800000    # 1.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_7

    .line 91
    .restart local v50    # "realGain":Ljava/lang/Float;
    :cond_9
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const/high16 v57, 0x447a0000    # 1000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_8

    .line 96
    .restart local v40    # "lineCnt":Ljava/lang/Integer;
    :cond_a
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_9

    .line 101
    .restart local v39    # "lensPos":Ljava/lang/Integer;
    :cond_b
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_a

    .line 119
    .restart local v21    # "chromatixMainCam":Ljava/lang/String;
    .restart local v54    # "versionSize":I
    :cond_c
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 120
    add-int/lit8 v38, v38, 0x2

    .line 121
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 122
    add-int/lit8 v38, v38, 0x2

    .line 123
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 124
    add-int/lit8 v38, v38, 0x2

    goto/16 :goto_b

    .line 141
    .restart local v20    # "chromatixFrontCam":Ljava/lang/String;
    :cond_d
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 142
    add-int/lit8 v38, v38, 0x2

    .line 143
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 144
    add-int/lit8 v38, v38, 0x2

    .line 145
    const/16 v55, 0x2

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->addContentToMakerNote([BIII)V

    .line 146
    add-int/lit8 v38, v38, 0x2

    goto/16 :goto_c

    .line 151
    .restart local v52    # "stepPos":Ljava/lang/Integer;
    :cond_e
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_d

    .line 155
    .restart local v48    # "monoLensPos":Ljava/lang/Integer;
    :cond_f
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_e

    .line 159
    .restart local v49    # "monoStepPos":Ljava/lang/Integer;
    :cond_10
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_f

    .line 163
    .restart local v12    # "afState":Ljava/lang/Integer;
    :cond_11
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_10

    .line 167
    .restart local v47    # "monoAfState":Ljava/lang/Integer;
    :cond_12
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_11

    .line 171
    .restart local v11    # "MainEEMarcoDac":Ljava/lang/Integer;
    :cond_13
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_12

    .line 175
    .restart local v10    # "MainEEINFDac":Ljava/lang/Integer;
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_13

    .line 180
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->ordinal()I

    move-result v55

    goto/16 :goto_14

    .line 184
    .restart local v8    # "Backlight_Severity":Ljava/lang/Integer;
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_15

    .line 188
    .restart local v7    # "AUXMarcoDac":Ljava/lang/Integer;
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_16

    .line 192
    .restart local v6    # "AUXEEINFDac":Ljava/lang/Integer;
    :cond_18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_17

    .line 196
    .restart local v18    # "af_total_time":Ljava/lang/Integer;
    :cond_19
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_18

    .line 200
    .restart local v15    # "af_roi_type":Ljava/lang/Integer;
    :cond_1a
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_19

    .line 204
    .restart local v16    # "af_roi_x":Ljava/lang/Integer;
    :cond_1b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_1a

    .line 208
    .restart local v17    # "af_roi_y":Ljava/lang/Integer;
    :cond_1c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_1b

    .line 212
    .restart local v13    # "af_roi_dx":Ljava/lang/Integer;
    :cond_1d
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_1c

    .line 216
    .restart local v14    # "af_roi_dy":Ljava/lang/Integer;
    :cond_1e
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v55

    goto/16 :goto_1d

    .line 220
    .restart local v41    # "lux_index":Ljava/lang/Float;
    :cond_1f
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const/high16 v57, 0x42c80000    # 100.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_1e

    .line 224
    .restart local v46    # "main_rg_gain":Ljava/lang/Float;
    :cond_20
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_1f

    .line 228
    .restart local v45    # "main_bg_gain":Ljava/lang/Float;
    :cond_21
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_20

    .line 232
    .restart local v37    # "front_rg_gain":Ljava/lang/Float;
    :cond_22
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_21

    .line 236
    .restart local v36    # "front_bg_gain":Ljava/lang/Float;
    :cond_23
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Float;->floatValue()F

    move-result v55

    const v57, 0x461c4000    # 10000.0f

    mul-float v55, v55, v57

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    goto/16 :goto_22

    .line 261
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_23
.end method


# virtual methods
.method public appendExifInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 1
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_IMAGE_EXIF:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCExifUtilExtention;->appendDebugInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    .line 35
    :cond_0
    return-void
.end method
