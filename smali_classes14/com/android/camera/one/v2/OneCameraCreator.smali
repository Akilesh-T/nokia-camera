.class public Lcom/android/camera/one/v2/OneCameraCreator;
.super Ljava/lang/Object;
.source "OneCameraCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/OneCameraCreator$ImageProcessorStub;
    }
.end annotation


# static fields
.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCamCreator"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/util/DisplayMetrics;Landroid/content/Context;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;
    .locals 13
    .param p0, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "slaveDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "slaveCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p4, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p5, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p8, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p9, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p10, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 118
    .line 119
    move-object/from16 v0, p4

    invoke-virtual {v0, p2}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getCaptureSupportLevel(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    move-result-object v7

    .line 120
    .local v7, "captureSupportLevel":Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    sget-object v3, Lcom/android/camera/one/v2/OneCameraCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera support level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    const/4 v9, 0x0

    .line 124
    .local v9, "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    const/4 v10, 0x0

    .line 125
    .local v10, "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    invoke-static {}, Lcom/android/camera/processing/ProcessingServiceManager;->instance()Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/processing/ProcessingServiceManager;->getImageBackend()Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v12

    .line 129
    .local v12, "imageBackend":Lcom/android/camera/processing/imagebackend/ImageBackend;
    sget-object v3, Lcom/android/camera/one/v2/OneCameraCreator$1;->$SwitchMap$com$android$camera$one$config$OneCameraFeatureConfig$CaptureSupportLevel:[I

    invoke-virtual {v7}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 168
    :goto_0
    new-instance v3, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    if-eqz p1, :cond_0

    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    invoke-direct {v4, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    :goto_1
    new-instance v5, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;

    .line 170
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;-><init>(Lcom/android/camera/device/CameraId;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz p3, :cond_1

    new-instance v6, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;

    .line 171
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-direct {v6, v8, v0}, Lcom/android/camera/one/v2/OneCameraCharacteristicsImpl;-><init>(Lcom/android/camera/device/CameraId;Landroid/hardware/camera2/CameraCharacteristics;)V

    :goto_2
    move-object/from16 v8, p7

    move-object/from16 v11, p10

    .line 168
    invoke-interface/range {v2 .. v11}, Lcom/android/camera/one/v2/OneCameraFactory;->createOneCamera(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/FatalErrorHandler;)Lcom/android/camera/one/OneCamera;

    move-result-object v3

    return-object v3

    .line 135
    :pswitch_0
    new-instance v2, Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .end local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    const/16 v3, 0x100

    .line 136
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getMaxAllowedImageReaderCount()I

    move-result v4

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;-><init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V

    .line 138
    .restart local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    new-instance v9, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .end local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    move-object/from16 v0, p8

    invoke-direct {v9, v0, v12}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 140
    .restart local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;

    .end local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    move-object/from16 v0, p8

    invoke-direct {v10, v0, v12}, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 141
    .restart local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v2, Lcom/android/camera/one/v2/SimpleOneCameraFactory;

    .end local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    const/16 v3, 0x23

    .line 145
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getMaxAllowedImageReaderCount()I

    move-result v4

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/camera/one/v2/SimpleOneCameraFactory;-><init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V

    .line 147
    .restart local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    new-instance v9, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .end local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    move-object/from16 v0, p8

    invoke-direct {v9, v0, v12}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 149
    .restart local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .end local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    move-object/from16 v0, p8

    invoke-direct {v10, v0, v12}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 150
    .restart local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    goto :goto_0

    .line 153
    :pswitch_2
    new-instance v2, Lcom/android/camera/one/v2/ZslOneCameraFactory;

    .end local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    const/16 v3, 0x23

    .line 154
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getMaxAllowedImageReaderCount()I

    move-result v4

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/camera/one/v2/ZslOneCameraFactory;-><init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V

    .line 155
    .restart local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    new-instance v9, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .end local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    move-object/from16 v0, p8

    invoke-direct {v9, v0, v12}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 157
    .restart local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .end local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    move-object/from16 v0, p8

    invoke-direct {v10, v0, v12}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 158
    .restart local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    goto/16 :goto_0

    .line 160
    :pswitch_3
    new-instance v2, Lcom/android/camera/one/v2/Level3OneCameraFactory;

    .end local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    const/16 v3, 0x23

    .line 161
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getMaxAllowedImageReaderCount()I

    move-result v4

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/camera/one/v2/Level3OneCameraFactory;-><init>(IILcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V

    .line 162
    .restart local v2    # "cameraFactory":Lcom/android/camera/one/v2/OneCameraFactory;
    new-instance v9, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .end local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    move-object/from16 v0, p8

    invoke-direct {v9, v0, v12}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .line 164
    .restart local v9    # "imageSaverBuilder":Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .end local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    move-object/from16 v0, p8

    invoke-direct {v10, v0, v12}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;-><init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V

    .restart local v10    # "imageProcessorBuilder":Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    goto/16 :goto_0

    .line 168
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 171
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
