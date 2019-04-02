.class Lcom/android/camera/ManualHal3Module$16$2;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Lcom/android/camera/burst/BurstReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualHal3Module$16;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualHal3Module$16;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 1
    .param p1, "ready"    # Z

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1906
    if-eqz p1, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1908
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1909
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->resumeFaceDetection()V

    .line 1915
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1912
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1913
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$16$2;->this$1:Lcom/android/camera/ManualHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/ManualHal3Module$16;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->pauseFaceDetection()V

    goto :goto_0
.end method
