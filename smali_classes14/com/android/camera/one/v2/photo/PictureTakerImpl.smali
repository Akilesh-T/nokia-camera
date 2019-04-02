.class Lcom/android/camera/one/v2/photo/PictureTakerImpl;
.super Ljava/lang/Object;
.source "PictureTakerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;
    }
.end annotation


# instance fields
.field private final mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

.field private final mCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

.field private final mMainExecutor:Lcom/android/camera/async/MainThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V
    .locals 0
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "cameraCommandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p3, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p4, "command"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mMainExecutor:Lcom/android/camera/async/MainThread;

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    .line 44
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/PictureTakerImpl;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    return-object v0
.end method


# virtual methods
.method public takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 9
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 81
    iget-object v6, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 82
    .local v6, "pictureCallback":Lcom/android/camera/one/OneCamera$PictureCallback;
    invoke-interface {p2}, Lcom/android/camera/session/CaptureSession;->isPreviewOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v6, p2}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v7, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mMainExecutor:Lcom/android/camera/async/MainThread;

    invoke-direct {v7, v6, v0}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;-><init>(Lcom/android/camera/one/OneCamera$PictureCallback;Ljava/util/concurrent/Executor;)V

    .line 92
    .local v7, "pictureCallbackAdapter":Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;
    invoke-virtual {v7}, Lcom/android/camera/one/v2/photo/PictureCallbackAdapter;->provideQuickExposeUpdatable()Lcom/android/camera/async/Updatable;

    move-result-object v2

    .line 94
    .local v2, "imageExposureCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mImageSaverBuilder:Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;

    iget-object v1, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->saverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget v4, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    .line 96
    invoke-static {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    .line 94
    invoke-interface {v0, v1, v4, p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;->build(Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    move-result-object v3

    .line 99
    .local v3, "imageSaver":Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/one/v2/photo/PictureTakerImpl$1;)V

    invoke-virtual {v8, v0}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
