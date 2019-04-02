.class Lcom/android/camera/CaptureModule$24$7$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24$7;->onSetupFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CaptureModule$24$7;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/CaptureModule$24$7;

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2688
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2696
    :cond_0
    :goto_0
    return-void

    .line 2691
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2692
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$102(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 2693
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$1;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method
