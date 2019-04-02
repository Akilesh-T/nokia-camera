.class Lcom/android/camera/ManualHal3Module$16$3$1;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module$16$3;->onSetupFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ManualHal3Module$16$3;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module$16$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/ManualHal3Module$16$3;

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$100(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1986
    invoke-static {}, Lcom/android/camera/ManualHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v1}, Lcom/android/camera/ManualHal3Module;->access$100(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1990
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ManualHal3Module;->access$102(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;

    .line 1991
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$3$1;->this$2:Lcom/android/camera/ManualHal3Module$16$3;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16$3;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method
