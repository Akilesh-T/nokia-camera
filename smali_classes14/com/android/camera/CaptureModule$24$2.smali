.class Lcom/android/camera/CaptureModule$24$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/burst/BurstReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CaptureModule$24;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CaptureModule$24;

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2500
    if-eqz p1, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2502
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2503
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->resumeFaceDetection()V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$5200(Lcom/android/camera/CaptureModule;I)V

    .line 2511
    :goto_0
    return-void

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2507
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2508
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CaptureModuleUI;->pauseFaceDetection()V

    .line 2509
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$2;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$5200(Lcom/android/camera/CaptureModule;I)V

    goto :goto_0
.end method
