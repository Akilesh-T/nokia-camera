.class final Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;
.super Ljava/lang/Object;
.source "PictureTakerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/PictureTakerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PictureTakerCommand"
.end annotation


# instance fields
.field private final mImageExposureCallback:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/photo/PictureTakerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p3, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p4, "session"    # Lcom/android/camera/session/CaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            "Lcom/android/camera/session/CaptureSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "imageExposureCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->this$0:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mImageExposureCallback:Lcom/android/camera/async/Updatable;

    .line 56
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .line 57
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/one/v2/photo/PictureTakerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    .param p2, "x1"    # Lcom/android/camera/async/Updatable;
    .param p3, "x2"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p4, "x3"    # Lcom/android/camera/session/CaptureSession;
    .param p5, "x4"    # Lcom/android/camera/one/v2/photo/PictureTakerImpl$1;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/session/CaptureSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->this$0:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->access$000(Lcom/android/camera/one/v2/photo/PictureTakerImpl;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mImageExposureCallback:Lcom/android/camera/async/Updatable;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mImageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 67
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "command"

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerImpl$PictureTakerCommand;->this$0:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 74
    invoke-static {v2}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;->access$000(Lcom/android/camera/one/v2/photo/PictureTakerImpl;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method
