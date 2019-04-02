.class Lcom/android/camera/one/v2/OneCameraZslImpl$8;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->savePicture(Landroid/media/Image;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

.field final synthetic val$captureParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$8;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$8;->val$captureParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$8;->val$captureParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureSaved(Landroid/net/Uri;)V

    .line 685
    return-void
.end method

.method public onSuccess(Lcom/google/common/base/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "uriOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$8;->val$captureParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v1, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureSaved(Landroid/net/Uri;)V

    .line 680
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 676
    check-cast p1, Lcom/google/common/base/Optional;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl$8;->onSuccess(Lcom/google/common/base/Optional;)V

    return-void
.end method
