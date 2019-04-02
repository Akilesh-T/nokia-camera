.class public final Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;
.super Ljava/lang/Object;
.source "SimplePictureTakerFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTakerFactory;


# instance fields
.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V
    .locals 0
    .param p1, "pictureTaker"    # Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    .param p2, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p3, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 55
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 56
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 57
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;
    .locals 68
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p5, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p6, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p7, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p8, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p10, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p11, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p13, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p14, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p15, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p17, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p18, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p19, "slaveGlobalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20, "repeatingTemplateType"    # I
    .param p21, "slaveRepeatingTemplateType"    # I
    .param p22, "captureTemplateType"    # I
    .param p23, "supportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .param p24, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/MainThread;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "III",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 85
    .local p16, "flashMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v19

    .line 86
    .local v19, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v19 .. v19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    move-object/from16 v0, p18

    invoke-interface {v0, v5}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 88
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v20

    .line 90
    .local v20, "flashDetector":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v20 .. v20}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    move-object/from16 v0, p18

    invoke-interface {v0, v5}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 94
    new-instance v4, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/4 v8, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v6, 0x0

    aput-object p10, v5, v6

    .line 95
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v18

    move-object/from16 v5, p2

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p12

    move/from16 v13, p20

    move/from16 v14, p22

    move-object/from16 v21, p17

    invoke-direct/range {v4 .. v21}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 99
    .local v4, "flashOnCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v21, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/16 v25, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v6, 0x0

    aput-object p10, v5, v6

    .line 100
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x1

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v35

    move-object/from16 v22, p2

    move-object/from16 v23, p13

    move-object/from16 v24, p15

    move-object/from16 v26, p7

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move-object/from16 v29, p12

    move/from16 v30, p20

    move/from16 v31, p22

    move-object/from16 v36, v19

    move-object/from16 v37, v20

    move-object/from16 v38, p17

    invoke-direct/range {v21 .. v38}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 105
    .local v21, "flashOffCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v22, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/16 v26, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v6, 0x0

    aput-object p10, v5, v6

    .line 106
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v36

    move-object/from16 v23, p2

    move-object/from16 v24, p13

    move-object/from16 v25, p15

    move-object/from16 v27, p7

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, p12

    move/from16 v31, p20

    move/from16 v32, p22

    move-object/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, p17

    invoke-direct/range {v22 .. v39}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 115
    .local v22, "flashAutoCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    sget-object v5, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory$1;->$SwitchMap$com$android$camera$one$config$OneCameraFeatureConfig$CaptureSupportLevel:[I

    invoke-virtual/range {p23 .. p23}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p17

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v65

    .line 127
    .local v65, "asdImageFilter":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    invoke-static/range {v65 .. v65}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    move-object/from16 v0, p18

    invoke-interface {v0, v5}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 128
    move-object/from16 v35, v65

    .line 130
    .local v35, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    const/16 v66, 0x0

    .line 131
    .local v66, "slaveSceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    if-eqz p19, :cond_0

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    move-object/from16 v3, p17

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v66

    .line 133
    invoke-static/range {v66 .. v66}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v5

    move-object/from16 v0, p19

    invoke-interface {v0, v5}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 136
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v6, :cond_4

    const/16 v39, 0x1

    .line 138
    .local v39, "isFrontFacing":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v23

    .line 139
    .local v23, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    const/16 v30, 0x0

    const/16 v33, 0x1

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v37

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v38

    move-object/from16 v24, p2

    move-object/from16 v25, p7

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move-object/from16 v28, p12

    move-object/from16 v29, p13

    move/from16 v31, p20

    move/from16 v32, p22

    move-object/from16 v34, v19

    move-object/from16 v36, p6

    invoke-virtual/range {v23 .. v39}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createHDRImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v31

    .line 140
    .local v31, "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v31, :cond_1

    move-object/from16 v31, v21

    .line 142
    :cond_1
    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v49, 0x0

    const/16 v52, 0x1

    const/16 v55, 0x0

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v57

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v58

    const-wide/16 v60, 0x0

    const/16 v62, 0x0

    move-object/from16 v41, v23

    move-object/from16 v44, p7

    move-object/from16 v45, p9

    move-object/from16 v46, p10

    move-object/from16 v47, p12

    move-object/from16 v48, p13

    move/from16 v50, p20

    move/from16 v51, p22

    move-object/from16 v53, v19

    move-object/from16 v54, v35

    move-object/from16 v56, p6

    move/from16 v59, v39

    invoke-virtual/range {v41 .. v62}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createDenoiseImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v32

    .line 143
    .local v32, "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v32, :cond_2

    move-object/from16 v32, v21

    .line 145
    :cond_2
    const/16 v51, 0x0

    const/16 v56, 0x1

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v61

    invoke-virtual/range {p24 .. p24}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v62

    const/16 v64, 0x0

    move-object/from16 v40, v23

    move-object/from16 v41, p7

    move-object/from16 v42, p8

    move-object/from16 v43, p2

    move-object/from16 v44, p3

    move-object/from16 v45, p9

    move-object/from16 v46, p10

    move-object/from16 v47, p11

    move-object/from16 v48, p12

    move-object/from16 v49, p13

    move-object/from16 v50, p14

    move/from16 v52, p20

    move/from16 v53, p21

    move/from16 v54, p22

    move/from16 v55, p22

    move-object/from16 v57, v19

    move-object/from16 v58, v35

    move-object/from16 v59, v66

    move-object/from16 v60, p6

    move/from16 v63, v39

    invoke-virtual/range {v40 .. v64}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createLowLightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v33

    .line 146
    .local v33, "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v33, :cond_3

    move-object/from16 v33, v21

    .line 152
    .end local v23    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    .end local v39    # "isFrontFacing":Z
    .end local v65    # "asdImageFilter":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    .end local v66    # "slaveSceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    :cond_3
    :goto_1
    new-instance v24, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, p2

    move-object/from16 v27, p16

    move-object/from16 v28, v4

    move-object/from16 v29, v22

    move-object/from16 v30, v21

    invoke-direct/range {v24 .. v36}, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/SceneDetector;Z)V

    .line 153
    .local v24, "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v5, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;

    new-instance v6, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v24

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-direct {v5, v6, v0, v1}, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v5

    .line 118
    .end local v24    # "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v31    # "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v32    # "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v33    # "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v35    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :pswitch_0
    new-instance v35, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v35 .. v35}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    .line 119
    .restart local v35    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    move-object/from16 v31, v21

    .line 120
    .restart local v31    # "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    move-object/from16 v32, v21

    .line 121
    .restart local v32    # "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    move-object/from16 v33, v21

    .line 122
    .restart local v33    # "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    move-object/from16 v67, v21

    .line 123
    .local v67, "srImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    goto :goto_1

    .line 136
    .end local v31    # "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v32    # "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v33    # "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v67    # "srImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .restart local v65    # "asdImageFilter":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    .restart local v66    # "slaveSceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    :cond_4
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SimplePictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
