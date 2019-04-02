.class public Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;
.super Ljava/lang/Object;
.source "MegviiPictureTakerFactory.java"

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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 56
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 57
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 58
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/ResponseManager;IILcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;
    .locals 36
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p4, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p5, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p6, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p7, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p8, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p9, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p10, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p11, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p13, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p14, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p15, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p16, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p17, "repeatingTemplateType"    # I
    .param p18, "captureTemplateType"    # I
    .param p19, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/MainThread;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
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
            "Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 82
    .local p12, "ringBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v20

    .line 84
    .local v20, "autoFlashZslImageFilter":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v20 .. v20}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p16

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 86
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v19

    .line 87
    .local v19, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v19 .. v19}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p16

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 89
    new-instance v35, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v35 .. v35}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    .line 91
    .local v35, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v6

    .line 92
    .local v6, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    const/16 v18, 0x1

    .line 93
    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v24

    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v25

    .line 94
    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getEffectMode()Lcom/android/camera/async/Observable;

    move-result-object v26

    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getEffectSetting()Lcom/android/camera/async/Observable;

    move-result-object v27

    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v28

    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v29

    const-wide/32 v30, 0x5f5e100

    .line 95
    invoke-virtual/range {p19 .. p19}, Lcom/android/camera/one/OneCameraCaptureSetting;->isNeedToHandleUltraWideDC()Z

    move-result v32

    move-object/from16 v7, p2

    move-object/from16 v8, p12

    move-object/from16 v9, p15

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p17

    move/from16 v17, p18

    move-object/from16 v21, p10

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    .line 92
    invoke-virtual/range {v6 .. v32}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createMegviiImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;JZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v33

    .line 97
    .local v33, "megviiCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v34, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 99
    .local v34, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    new-instance v7, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v2}, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v7
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MegviiPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
