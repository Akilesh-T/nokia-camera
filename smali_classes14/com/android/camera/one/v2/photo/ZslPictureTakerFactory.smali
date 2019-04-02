.class public Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;
.super Ljava/lang/Object;
.source "ZslPictureTakerFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTakerFactory;


# static fields
.field private static final MAX_LOOKBACK_NANOS:J = 0x5f5e100L


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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 67
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 68
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 69
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;
    .locals 71
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
    .param p12, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p13, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p14, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p15, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p16, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p17, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p19, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p21, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p22, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p23, "slaveGlobalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p24, "repeatingTemplateType"    # I
    .param p25, "slaveRepeatingTemplateType"    # I
    .param p26, "captureTemplateType"    # I
    .param p27, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
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
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "III",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 101
    .local p18, "ringBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p20, "flashMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v21

    .line 102
    .local v21, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v21 .. v21}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p22

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 106
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v22

    .line 108
    .local v22, "autoFlashZslImageFilter":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v22 .. v22}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p22

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 112
    new-instance v6, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v8, 0x0

    aput-object p10, v7, v8

    .line 114
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x1

    .line 115
    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v20

    move-object/from16 v7, p2

    move-object/from16 v8, p14

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p13

    move/from16 v15, p24

    move/from16 v16, p26

    move-object/from16 v23, p21

    invoke-direct/range {v6 .. v23}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 121
    .local v6, "flashOnCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v23, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v8, 0x0

    aput-object p10, v7, v8

    .line 122
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v37

    move-object/from16 v24, p2

    move-object/from16 v25, p14

    move-object/from16 v26, p16

    move-object/from16 v27, p17

    move-object/from16 v28, p7

    move-object/from16 v29, p9

    move-object/from16 v30, p10

    move-object/from16 v31, p13

    move/from16 v32, p24

    move/from16 v33, p26

    move-object/from16 v38, v21

    move-object/from16 v39, v22

    move-object/from16 v40, p21

    invoke-direct/range {v23 .. v40}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 123
    .local v23, "flashOffFallback":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v24, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;

    new-instance v34, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v34

    invoke-direct {v0, v7, v8}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(ZZ)V

    .line 124
    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v35

    const-wide/32 v36, 0x5f5e100

    move-object/from16 v25, p0

    move-object/from16 v26, p18

    move-object/from16 v27, p19

    move-object/from16 v28, p7

    move-object/from16 v29, p9

    move-object/from16 v30, p12

    move-object/from16 v31, p16

    move-object/from16 v32, v23

    move-object/from16 v33, p10

    invoke-direct/range {v24 .. v37}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Ljava/lang/Runnable;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/google/common/base/Predicate;Lcom/android/camera/async/Observable;J)V

    .line 126
    .local v24, "flashOffCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v26, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;

    .line 127
    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v37

    const-wide/32 v38, 0x5f5e100

    move-object/from16 v27, p0

    move-object/from16 v28, p18

    move-object/from16 v29, p19

    move-object/from16 v30, p7

    move-object/from16 v31, p9

    move-object/from16 v32, p12

    move-object/from16 v33, p16

    move-object/from16 v34, v6

    move-object/from16 v35, p10

    move-object/from16 v36, v22

    invoke-direct/range {v26 .. v39}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Ljava/lang/Runnable;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/google/common/base/Predicate;Lcom/android/camera/async/Observable;J)V

    .line 129
    .local v26, "flashAutoCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p21

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v39

    .line 130
    .local v39, "sceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    invoke-static/range {v39 .. v39}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p22

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 132
    const/16 v70, 0x0

    .line 133
    .local v70, "slaveSceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    if-eqz p23, :cond_0

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    move-object/from16 v3, p21

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v70

    .line 135
    invoke-static/range {v70 .. v70}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p23

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 138
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_5

    const/16 v43, 0x1

    .line 139
    .local v43, "isFrontFacing":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v27

    .line 140
    .local v27, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    const/16 v37, 0x0

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v41

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v42

    move-object/from16 v28, p2

    move-object/from16 v29, p7

    move-object/from16 v30, p9

    move-object/from16 v31, p10

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v34, p17

    move/from16 v35, p24

    move/from16 v36, p26

    move-object/from16 v38, v21

    move-object/from16 v40, p6

    invoke-virtual/range {v27 .. v43}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createHDRImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v35

    .line 141
    .local v35, "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v35, :cond_1

    move-object/from16 v35, v24

    .line 143
    :cond_1
    const/16 v56, 0x0

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v61

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v62

    const-wide/32 v64, 0x5f5e100

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->isNeedToHandleUltraWideDC()Z

    move-result v66

    move-object/from16 v45, v27

    move-object/from16 v46, p18

    move-object/from16 v47, p19

    move-object/from16 v48, p7

    move-object/from16 v49, p9

    move-object/from16 v50, p10

    move-object/from16 v51, p13

    move-object/from16 v52, p14

    move-object/from16 v53, p17

    move/from16 v54, p24

    move/from16 v55, p26

    move-object/from16 v57, v21

    move-object/from16 v58, v39

    move-object/from16 v59, p12

    move-object/from16 v60, p6

    move/from16 v63, v43

    invoke-virtual/range {v45 .. v66}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createDenoiseImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v36

    .line 144
    .local v36, "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v36, :cond_2

    move-object/from16 v36, v24

    .line 146
    :cond_2
    const/16 v60, 0x0

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v65

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v66

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->isNeedToHandleUltraWideDC()Z

    move-result v68

    move-object/from16 v44, v27

    move-object/from16 v45, p7

    move-object/from16 v46, p8

    move-object/from16 v47, p2

    move-object/from16 v48, p3

    move-object/from16 v49, p9

    move-object/from16 v50, p10

    move-object/from16 v51, p11

    move-object/from16 v52, p13

    move-object/from16 v53, p14

    move-object/from16 v54, p15

    move-object/from16 v55, p17

    move/from16 v56, p24

    move/from16 v57, p25

    move/from16 v58, p26

    move/from16 v59, p26

    move-object/from16 v61, v21

    move-object/from16 v62, v39

    move-object/from16 v63, v70

    move-object/from16 v64, p6

    move/from16 v67, v43

    invoke-virtual/range {v44 .. v68}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createLowLightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v37

    .line 147
    .local v37, "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v37, :cond_3

    move-object/from16 v37, v24

    .line 149
    :cond_3
    const/16 v55, 0x1

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v61

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v62

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_6

    const/16 v63, 0x1

    :goto_1
    const-wide/32 v64, 0x5f5e100

    move-object/from16 v44, v27

    move-object/from16 v45, p18

    move-object/from16 v46, p19

    move-object/from16 v47, p7

    move-object/from16 v48, p9

    move-object/from16 v49, p10

    move-object/from16 v50, p13

    move-object/from16 v51, p14

    move-object/from16 v52, p17

    move/from16 v53, p24

    move/from16 v54, p26

    move-object/from16 v56, v21

    move-object/from16 v57, v39

    move-object/from16 v58, v22

    move-object/from16 v59, p12

    move-object/from16 v60, p6

    invoke-virtual/range {v44 .. v65}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createUltraWideImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v38

    .line 150
    .local v38, "ultraWideCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    if-nez v38, :cond_4

    move-object/from16 v38, v24

    .line 152
    :cond_4
    new-instance v28, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->isNeedToHandleUltraWideDC()Z

    move-result v40

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move-object/from16 v31, p20

    move-object/from16 v32, v6

    move-object/from16 v33, v26

    move-object/from16 v34, v24

    invoke-direct/range {v28 .. v40}, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/SceneDetector;Z)V

    .line 153
    .local v28, "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v69, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 157
    .local v69, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    new-instance v7, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;

    move-object/from16 v0, v69

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-direct {v7, v0, v1, v2}, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v7

    .line 138
    .end local v27    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    .end local v28    # "flashBasedCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v35    # "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v36    # "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v37    # "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v38    # "ultraWideCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v43    # "isFrontFacing":Z
    .end local v69    # "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    :cond_5
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 149
    .restart local v27    # "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    .restart local v35    # "hdrImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .restart local v36    # "denoiseImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .restart local v37    # "lowlightImageCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .restart local v43    # "isFrontFacing":Z
    :cond_6
    const/16 v63, 0x0

    goto :goto_1
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ZslPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
