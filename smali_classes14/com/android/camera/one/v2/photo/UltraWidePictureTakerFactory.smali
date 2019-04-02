.class public Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;
.super Ljava/lang/Object;
.source "UltraWidePictureTakerFactory.java"

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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 58
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 59
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 60
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;
    .locals 30
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p5, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p6, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p7, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p8, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p9, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p10, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p12, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p13, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p14, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p15, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p16, "repeatingTemplateType"    # I
    .param p17, "captureTemplateType"    # I
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
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "II",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")",
            "Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 83
    .local p11, "ringBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v20

    .line 85
    .local v20, "autoFlashZslImageFilter":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v20 .. v20}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p15

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v18

    .line 88
    .local v18, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v18 .. v18}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p15

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 91
    sget-object v7, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v7}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v19

    .line 92
    .local v19, "sceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    invoke-static/range {v19 .. v19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p15

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 94
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v6

    .line 95
    .local v6, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    const/16 v17, 0x1

    invoke-virtual/range {p18 .. p18}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v23

    invoke-virtual/range {p18 .. p18}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v24

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_0

    const/16 v25, 0x1

    :goto_0
    const-wide/32 v26, 0x5f5e100

    move-object/from16 v7, p11

    move-object/from16 v8, p14

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p16

    move/from16 v16, p17

    move-object/from16 v21, p9

    move-object/from16 v22, p5

    invoke-virtual/range {v6 .. v27}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createUltraWideImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v29

    .line 97
    .local v29, "ultraWideCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v28, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 99
    .local v28, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    new-instance v7, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v2}, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v7

    .line 95
    .end local v28    # "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    .end local v29    # "ultraWideCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    :cond_0
    const/16 v25, 0x0

    goto :goto_0
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/UltraWidePictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
