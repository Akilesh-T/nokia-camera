.class public final Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;
.super Ljava/lang/Object;
.source "LegacyPictureTakerFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTakerFactory;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;)V
    .locals 2
    .param p1, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p2, "cameraCommandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p3, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p8, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;

    invoke-direct {v0, p4, p6, p8}, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;)V

    .line 49
    .local v0, "imageCaptureCommand":Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;
    new-instance v1, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    invoke-direct {v1, p3, p2, p1, v0}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    .line 51
    new-instance v1, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct {v1}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 53
    new-instance v1, Lcom/android/camera/one/v2/photo/FlashDetectorStub;

    invoke-direct {v1}, Lcom/android/camera/one/v2/photo/FlashDetectorStub;-><init>()V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 54
    return-void
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/LegacyPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
