.class Lcom/android/camera/VideoHal3Module$21$7$1;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21$7;->onSetupFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/VideoHal3Module$21$7;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/VideoHal3Module$21$7;

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2397
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2405
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2401
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoHal3Module;->access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2402
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$1;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method
