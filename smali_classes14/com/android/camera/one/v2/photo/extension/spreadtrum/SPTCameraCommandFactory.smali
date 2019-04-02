.class public Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCameraCommandFactory;
.super Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
.source "SPTCameraCommandFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public creatBeautyImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p8, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p9, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "repeatingRequestTemplate"    # I
    .param p11, "stillCaptureRequestTemplate"    # I
    .param p12, "waitForAFConvergence"    # Z
    .param p13, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p14, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p15, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p16, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p17, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p20, "isFrontFacing"    # Z
    .param p21, "maxLookBackNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;ZJ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p18, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p19, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public creatPicSelfieImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p8, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p9, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "repeatingRequestTemplate"    # I
    .param p11, "stillCaptureRequestTemplate"    # I
    .param p12, "waitForAFConvergence"    # Z
    .param p13, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p14, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p15, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p16, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p17, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p21, "isFrontFacing"    # Z
    .param p22, "maxLookBackNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;ZJ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p18, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p19, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p20, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createBokehImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/util/ProductModelUtil$DualCamType;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p11, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p12, "repeatingRequestTemplate"    # I
    .param p13, "slaveRepeatingRequestTemplate"    # I
    .param p14, "stillCaptureRequestTemplate"    # I
    .param p15, "slaveStillCaptureRequestTemplate"    # I
    .param p16, "waitForAFConvergence"    # Z
    .param p17, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p18, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p19, "slaveSceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p20, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p21, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p25, "fallbackCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p26, "dualCamType"    # Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .param p27, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p28, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIIIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/util/ProductModelUtil$DualCamType;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            ")",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 73
    .local p22, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p23, "faceData":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<[Landroid/hardware/camera2/params/Face;>;"
    .local p24, "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDenoiseImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p2, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p3, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p4, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p5, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p7, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p8, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p9, "repeatingRequestTemplate"    # I
    .param p10, "stillCaptureRequestTemplate"    # I
    .param p11, "waitForAFConvergence"    # Z
    .param p12, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p13, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p14, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p15, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p16, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p18, "isFrontFacing"    # Z
    .param p19, "maxLookBackNanos"    # J
    .param p21, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;ZJZ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p17, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDualSightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIZLcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p11, "repeatingRequestTemplate"    # I
    .param p12, "slaveRepeatingRequestTemplate"    # I
    .param p13, "stillCaptureRequestTemplate"    # I
    .param p14, "waitForAFConvergence"    # Z
    .param p15, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p16, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p17, "slaveTargetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p18, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p19, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p20, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIIZ",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "Lcom/android/camera/opengl/image/ImageGeneratorProvider;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 78
    .local p21, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p22, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p23, "twiceShotSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p24, "screenMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createHDRImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p2, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p4, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p5, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p6, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p7, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p8, "repeatingRequestTemplate"    # I
    .param p9, "stillCaptureRequestTemplate"    # I
    .param p10, "waitForAFConvergence"    # Z
    .param p11, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p12, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p13, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p14, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p16, "isFrontFacing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 43
    .local p15, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLowLightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p9, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p12, "repeatingRequestTemplate"    # I
    .param p13, "slaveRepeatingRequestTemplate"    # I
    .param p14, "stillCaptureRequestTemplate"    # I
    .param p15, "slaveStillCaptureRequestTemplate"    # I
    .param p16, "waitForAFConvergence"    # Z
    .param p17, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p18, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p19, "slaveSceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p20, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p21, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p23, "isFrontFacing"    # Z
    .param p24, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIIIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;ZZ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 68
    .local p22, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createMegviiImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;JZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p1, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p8, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p9, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p10, "repeatingRequestTemplate"    # I
    .param p11, "stillCaptureRequestTemplate"    # I
    .param p12, "waitForAFConvergence"    # Z
    .param p13, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p14, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p15, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p16, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p17, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p18, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p24, "maxLookBackNanos"    # J
    .param p26, "postHandleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/photo/ImageRotationCalculator;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;JZ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p19, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p20, "effectMode":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    .local p21, "effectSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p22, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p23, "beautyLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createUltraWideImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p2, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p3, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p4, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p5, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p7, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p8, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p9, "repeatingRequestTemplate"    # I
    .param p10, "stillCaptureRequestTemplate"    # I
    .param p11, "waitForAFConvergence"    # Z
    .param p12, "state3AProvider"    # Lcom/android/camera/one/v2/photo/State3AProvider;
    .param p13, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p14, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p15, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p16, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p17, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p19, "isFrontFacing"    # Z
    .param p20, "maxLookBackNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "IIZ",
            "Lcom/android/camera/one/v2/photo/State3AProvider;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;ZJ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p18, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createZSLBurstCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;I)Lcom/android/camera/one/v2/commands/CameraCommand;
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p3, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p5, "managedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p6, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p7, "imageStream"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .param p8, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p9, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p10, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p11, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p12, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p13, "templateType"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method
