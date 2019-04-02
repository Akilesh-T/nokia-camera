.class public Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;
.super Ljava/lang/Object;
.source "OneCameraCharacteristicsImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraCharacteristics;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CONTROL_SCENE_MODE_HDR:I = 0x12

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCamCharImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraId;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 79
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 80
    invoke-static {p2}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtCreator;->create(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    .line 81
    return-void
.end method


# virtual methods
.method public checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 13
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isQCFASensor()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useFakeQCFASolution()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v7

    .line 352
    :cond_1
    if-eqz p1, :cond_7

    .line 353
    iget-object v9, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 356
    .local v0, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v2

    .line 357
    .local v2, "inputFormats":[I
    const/4 v5, 0x0

    .line 358
    .local v5, "validFormat":Z
    array-length v10, v2

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_3

    aget v1, v2, v9

    .line 359
    .local v1, "format":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v11

    if-ne v1, v11, :cond_2

    .line 360
    const/4 v5, 0x1

    .line 358
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 364
    .end local v1    # "format":I
    :cond_3
    if-nez v5, :cond_4

    .line 365
    sget-object v7, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "input format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v7, v8

    .line 367
    goto :goto_0

    .line 370
    :cond_4
    const/4 v6, 0x0

    .line 371
    .local v6, "validSize":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 372
    .local v3, "inputSizes":[Landroid/util/Size;
    array-length v10, v3

    move v9, v8

    :goto_2
    if-ge v9, v10, :cond_6

    aget-object v4, v3, v9

    .line 373
    .local v4, "s":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 374
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 375
    const/4 v6, 0x1

    .line 372
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 379
    .end local v4    # "s":Landroid/util/Size;
    :cond_6
    if-nez v6, :cond_0

    .line 380
    sget-object v7, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "input size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 381
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    invoke-static {v7, v9}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v7, v8

    .line 382
    goto/16 :goto_0

    .end local v0    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v2    # "inputFormats":[I
    .end local v3    # "inputSizes":[Landroid/util/Size;
    .end local v5    # "validFormat":Z
    .end local v6    # "validSize":Z
    :cond_7
    move v7, v8

    .line 386
    goto/16 :goto_0
.end method

.method public configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/async/Lifetime;",
            "Landroid/media/MediaRecorder;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 518
    .local p4, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$Facing;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z

    move-result v0

    return v0
.end method

.method public getAvailableFocalLengths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0}, Lcom/google/common/primitives/Floats;->asList([F)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMaxDigitalZoom()F
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getCalibrationData()[B
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getCalibrationData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, "direction":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 163
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getCustomNumMic()I

    move-result v0

    return v0
.end method

.method public getCustomOzoDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getCustomOzoDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOrientation(I)I
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getSensorOrientation()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getSensorOrientation()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensationStep()F
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const/high16 v1, -0x40800000    # -1.0f

    .line 330
    :goto_0
    return v1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 330
    .local v0, "compensationStep":Landroid/util/Rational;
    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public getHighResolutionOutputSizes(I)Ljava/util/List;
    .locals 8
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 621
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v3, "supportedHighResolutionOutputSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 631
    .local v0, "androidSize":Landroid/util/Size;
    new-instance v7, Lcom/android/camera/util/Size;

    invoke-direct {v7, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "androidSize":Landroid/util/Size;
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "supportedHighResolutionOutputSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    :catch_0
    move-exception v2

    .line 624
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Unable to obtain HighResolutionOutputSizes."

    invoke-static {v5, v6, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 633
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public getHorizontalViewAngle()F
    .locals 12

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getAvailableFocalLengths()Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "availableFocalLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 460
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 461
    .local v1, "focalLength":F
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    .line 462
    .local v4, "sensorPhysicalSize":Landroid/util/SizeF;
    if-eqz v4, :cond_0

    .line 463
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 465
    .local v2, "scale":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    float-to-double v8, v5

    mul-double/2addr v8, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    float-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 468
    .end local v1    # "focalLength":F
    .end local v2    # "scale":D
    .end local v4    # "sensorPhysicalSize":Landroid/util/SizeF;
    :goto_0
    return v5

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getLensFocusRange()Lcom/android/camera/ui/motion/LinearScale;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/android/camera/ui/focus/LensRangeCalculator;->getDiopterToRatioCalculator(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const/4 v1, -0x1

    .line 320
    :goto_0
    return v1

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 319
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 320
    .local v0, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxFrameDuration()J
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxISO()I
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isISOSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 567
    :goto_0
    return v1

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 566
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 567
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxReprocessCaptureStall()I
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REPROCESS_MAX_CAPTURE_STALL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxSensorExposureTime()J
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getSensorExposureTimeRange()Landroid/util/Range;

    move-result-object v0

    .line 419
    .local v0, "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 421
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    check-cast v0, Landroid/util/Range;

    .line 423
    .restart local v0    # "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMinExposureCompensation()I
    .locals 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/4 v1, -0x1

    .line 310
    :goto_0
    return v1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 309
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 310
    .local v0, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getMinISO()I
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->isISOSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 559
    :goto_0
    return v1

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 558
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 559
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getMinSensorExposureTime()J
    .locals 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getSensorExposureTimeRange()Landroid/util/Range;

    move-result-object v0

    .line 429
    .local v0, "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 431
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    check-cast v0, Landroid/util/Range;

    .line 433
    .restart local v0    # "sensorExposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMinimumFocusDistance()F
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 585
    .local v0, "distance":Ljava/lang/Float;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getOpaqueRawSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSensorOrientation()I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupportedFaceDetectModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 233
    .local v1, "modes":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v2, "oneModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 236
    aget v3, v1, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 237
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    aget v3, v1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 240
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 243
    sget-object v3, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return-object v2
.end method

.method public getSupportedFixedHighSpeedVideoList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/camera/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v6, "supportedHighSpeedVideoMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/camera/util/Size;Landroid/util/Range<Ljava/lang/Integer;>;>;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 532
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v3

    .line 533
    .local v3, "highSpeedVideoSizes":[Landroid/util/Size;
    array-length v10, v3

    const/4 v7, 0x0

    move v9, v7

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v5, v3, v9

    .line 534
    .local v5, "size":Landroid/util/Size;
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v0

    .line 535
    .local v0, "availableFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v11, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v11, :cond_1

    aget-object v4, v0, v8

    .line 536
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 537
    new-instance v7, Landroid/util/Pair;

    new-instance v12, Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-direct {v7, v12, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 533
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 541
    .end local v0    # "availableFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "highSpeedVideoSizes":[Landroid/util/Size;
    .end local v5    # "size":Landroid/util/Size;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "Unable to obtain HighSpeedVideo sizes."

    invoke-static {v7, v8, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    return-object v6
.end method

.method public getSupportedFocusMode()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 205
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, "supportedHardwareLevel":Ljava/lang/Integer;
    const-string v1, "INFO_SUPPORTED_HARDWARE_LEVEL not found"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 220
    sget-object v1, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown higher hardware level mapped to LEVEL_3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEVEL_3:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    :goto_0
    return-object v1

    .line 210
    :pswitch_0
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEVEL_3:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    goto :goto_0

    .line 212
    :pswitch_1
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    goto :goto_0

    .line 214
    :pswitch_2
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    goto :goto_0

    .line 216
    :pswitch_3
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    goto :goto_0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid value for INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedPictureSizes(I)Ljava/util/List;
    .locals 9
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v3, "supportedPictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v5}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isQCFASensor()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useFakeQCFASolution()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v5}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getFakeQCFAPictureSize()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 99
    .local v0, "androidSize":Landroid/util/Size;
    new-instance v6, Lcom/android/camera/util/Size;

    invoke-direct {v6, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v0    # "androidSize":Landroid/util/Size;
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "supportedPictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    :catch_0
    move-exception v2

    .line 90
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Unable to obtain picture sizes."

    invoke-static {v5, v6, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v3

    .line 103
    .restart local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v3    # "supportedPictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 104
    .restart local v0    # "androidSize":Landroid/util/Size;
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-direct {v8, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "androidSize":Landroid/util/Size;
    :cond_2
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 107
    .restart local v0    # "androidSize":Landroid/util/Size;
    new-instance v7, Lcom/android/camera/util/Size;

    invoke-direct {v7, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v3, "supportedPictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    const-class v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 125
    .local v0, "androidSize":Landroid/util/Size;
    new-instance v7, Lcom/android/camera/util/Size;

    invoke-direct {v7, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "androidSize":Landroid/util/Size;
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "supportedPictureSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    :catch_0
    move-exception v2

    .line 119
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Unable to obtain preview sizes."

    invoke-static {v5, v6, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public getSupportedSurroundSound()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    .line 133
    .local v1, "supportedSizes":[Landroid/util/Size;
    if-eqz v1, :cond_0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "supportedThumnailSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 136
    .local v0, "androidSize":Landroid/util/Size;
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-direct {v5, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "androidSize":Landroid/util/Size;
    .end local v2    # "supportedThumnailSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    .line 573
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 12

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getAvailableFocalLengths()Ljava/util/List;

    move-result-object v0

    .line 474
    .local v0, "availableFocalLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 475
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 476
    .local v1, "focalLength":F
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    .line 477
    .local v4, "sensorPhysicalSize":Landroid/util/SizeF;
    if-eqz v4, :cond_0

    .line 478
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v6, v5

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 480
    .local v2, "scale":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    float-to-double v8, v5

    mul-double/2addr v8, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    float-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 483
    .end local v1    # "focalLength":F
    .end local v2    # "scale":D
    .end local v4    # "sensorPhysicalSize":Landroid/util/SizeF;
    :goto_0
    return v5

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public isAutoExposureSupported()Z
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 346
    .local v0, "maxAeRegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoFocusSupported()Z
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 338
    .local v0, "maxAfRegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isAutoHdrSupported()Z

    move-result v0

    return v0
.end method

.method public isEISSupported(Lcom/android/camera/util/Size;)Z
    .locals 5
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 400
    if-nez p1, :cond_0

    move v2, v3

    .line 408
    :goto_0
    return v2

    .line 401
    :cond_0
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 402
    .local v0, "profile":Landroid/media/CamcorderProfile;
    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    if-lt v2, v4, :cond_1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    if-ge v2, v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v1

    .line 405
    .local v1, "supportedEISMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    .line 406
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 408
    goto :goto_0
.end method

.method public isExposureCompensationSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 264
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_6:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLollipop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    :goto_0
    return v2

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 268
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 269
    .local v0, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isFlashSupported()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFrontCamMirrorSupported()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isFrontCamMirrorSupported()Z

    move-result v0

    return v0
.end method

.method public isHdrSceneSupported()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    if-ne v4, v5, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 190
    .local v1, "availableSceneModes":[I
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget v0, v1, v4

    .line 191
    .local v0, "availableSceneMode":I
    const/16 v6, 0x12

    if-ne v0, v6, :cond_1

    .line 198
    .end local v0    # "availableSceneMode":I
    .end local v1    # "availableSceneModes":[I
    :cond_0
    :goto_1
    return v2

    .line 190
    .restart local v0    # "availableSceneMode":I
    .restart local v1    # "availableSceneModes":[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "availableSceneMode":I
    :cond_2
    move v2, v3

    .line 195
    goto :goto_1
.end method

.method public isHighResolutionOutputSizes(Lcom/android/camera/util/Size;I)Z
    .locals 9
    .param p1, "targetSize"    # Lcom/android/camera/util/Size;
    .param p2, "imageFormat"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .local v1, "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 610
    .local v0, "androidSize":Landroid/util/Size;
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 611
    const/4 v3, 0x1

    .line 614
    .end local v0    # "androidSize":Landroid/util/Size;
    .end local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_0
    :goto_1
    return v3

    .line 604
    :catch_0
    move-exception v2

    .line 605
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Unable to obtain HighResolutionOutputSizes."

    invoke-static {v4, v5, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 609
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "androidSize":Landroid/util/Size;
    .restart local v1    # "configMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isHighSpeedVideoSupported()Z
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isISOSupported()Z
    .locals 3

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 550
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 551
    .local v0, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMetadataSupported()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public isMonoCamera()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isMonoCamera()Z

    move-result v0

    return v0
.end method

.method public isOISSupported()Z
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "supportedOISMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 393
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 395
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQCFASensor()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isQCFASensor()Z

    move-result v0

    return v0
.end method

.method public isRawCaptureSupported()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReprocessingSupported(I)Z
    .locals 3
    .param p1, "imageFormat"    # I

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->configureInputStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v1, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "not support input stream, maybe this is mtk platform"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    :goto_0
    return v0

    .line 288
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSupportHWRotate()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, "hwrotate":I
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useHWRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->HW_ROTATE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 651
    sget-object v2, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportHWRotate(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_0
    move v4, v2

    :goto_1
    return v4

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v4

    .line 657
    goto :goto_0
.end method

.method public isSupportedSurroundSound()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mOneCameraCharExtension:Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;->isSupportedSurroundSound()Z

    move-result v0

    return v0
.end method

.method public isZSLSupported()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
