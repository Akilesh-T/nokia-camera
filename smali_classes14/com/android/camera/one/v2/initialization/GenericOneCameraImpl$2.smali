.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


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

.field final synthetic val$session:Lcom/android/camera/session/CaptureSession;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->screenFlashController:Lcom/android/camera/one/OneCamera$ScreenFlashController;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$ScreenFlashController;->hideScreenFlash()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$2;->val$session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 205
    return-void
.end method
