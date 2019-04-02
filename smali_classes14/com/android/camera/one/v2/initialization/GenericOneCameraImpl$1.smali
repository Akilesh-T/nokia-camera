.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureSaved(Landroid/net/Uri;)V

    .line 182
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 177
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureTakingFailed()V

    .line 187
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 197
    return-void
.end method

.method public onQuickExpose()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onQuickExpose()V

    .line 166
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$ScreenFlashController;->hideScreenFlash()V

    .line 167
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onTakePictureProgress(F)V

    .line 192
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$1;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$PictureCallback;->onThumbnailResult([B)V

    .line 172
    return-void
.end method
