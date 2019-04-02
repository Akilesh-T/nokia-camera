.class public final Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;
.super Ljava/lang/Object;
.source "ManualPictureTakerFactory.java"

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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 55
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 56
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;
    .locals 44
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p5, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p6, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p7, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p8, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p9, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p10, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p11, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p13, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p14, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p15, "repeatingTemplateType"    # I
    .param p16, "captureTemplateType"    # I
    .param p17, "supportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .param p18, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/MainThread;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "II",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 78
    .local p12, "flashMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v19

    .line 79
    .local v19, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v19 .. v19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    move-object/from16 v0, p14

    invoke-interface {v0, v6}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 81
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v22

    .line 83
    .local v22, "flashDetector":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v22 .. v22}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    move-object/from16 v0, p14

    invoke-interface {v0, v6}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 86
    sget-object v6, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory$1;->$SwitchMap$com$android$camera$one$config$OneCameraFeatureConfig$CaptureSupportLevel:[I

    invoke-virtual/range {p17 .. p17}, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p13

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v43

    .line 93
    .local v43, "asdImageFilter":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    invoke-static/range {v43 .. v43}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    move-object/from16 v0, p14

    invoke-interface {v0, v6}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 94
    move-object/from16 v21, v43

    .line 100
    .end local v43    # "asdImageFilter":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    .local v21, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    :goto_0
    new-instance v4, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;

    const/4 v8, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v7, 0x0

    aput-object p8, v6, v7

    .line 101
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {p18 .. p18}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v18

    move-object/from16 v5, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p15

    move/from16 v14, p16

    move-object/from16 v20, p18

    invoke-direct/range {v4 .. v22}, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    .line 105
    .local v4, "flashOnCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v23, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;

    const/16 v27, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v7, 0x0

    aput-object p8, v6, v7

    .line 106
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {p18 .. p18}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v37

    move-object/from16 v24, p2

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move-object/from16 v28, p6

    move-object/from16 v29, p7

    move-object/from16 v30, p8

    move-object/from16 v31, p9

    move/from16 v32, p15

    move/from16 v33, p16

    move-object/from16 v38, v19

    move-object/from16 v39, p18

    move-object/from16 v40, v21

    move-object/from16 v41, v22

    invoke-direct/range {v23 .. v41}, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    .line 111
    .local v23, "flashOffCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v24, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;

    const/16 v28, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v7, 0x0

    aput-object p8, v6, v7

    .line 112
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x1

    const/16 v37, 0x1

    invoke-virtual/range {p18 .. p18}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v38

    move-object/from16 v25, p2

    move-object/from16 v26, p10

    move-object/from16 v27, p11

    move-object/from16 v29, p6

    move-object/from16 v30, p7

    move-object/from16 v31, p8

    move-object/from16 v32, p9

    move/from16 v33, p15

    move/from16 v34, p16

    move-object/from16 v39, v19

    move-object/from16 v40, p18

    move-object/from16 v41, v21

    move-object/from16 v42, v22

    invoke-direct/range {v24 .. v42}, Lcom/android/camera/one/v2/photo/ManualConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    .line 113
    .local v24, "flashAutoCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v5, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p12

    move-object v9, v4

    move-object/from16 v10, v24

    move-object/from16 v11, v23

    move-object/from16 v16, v21

    invoke-direct/range {v5 .. v17}, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/SceneDetector;Z)V

    .line 114
    .local v5, "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v6, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;

    new-instance v7, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v2, v5}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v6, v7, v0, v1}, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v6

    .line 89
    .end local v4    # "flashOnCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v5    # "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v21    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    .end local v23    # "flashOffCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v24    # "flashAutoCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    :pswitch_0
    new-instance v21, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v21 .. v21}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    .line 90
    .restart local v21    # "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    goto/16 :goto_0

    .line 86
    nop

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
    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ManualPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
