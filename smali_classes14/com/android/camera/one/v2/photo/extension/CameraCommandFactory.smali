.class public abstract Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
.super Ljava/lang/Object;
.source "CameraCommandFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract creatBeautyImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract creatPicSelfieImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createBokehImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/util/ProductModelUtil$DualCamType;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createDenoiseImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createDualSightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIZLcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createHDRImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Z)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createLowLightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createMegviiImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;JZ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createUltraWideImageCaptureCommand(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
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
.end method

.method public abstract createZSLBurstCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/BurstController;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Ljava/lang/Runnable;I)Lcom/android/camera/one/v2/commands/CameraCommand;
.end method
