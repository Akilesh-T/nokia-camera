.class Lcom/android/camera/DualSightVideoModule$16$4;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/video/CountdownController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightVideoModule$16;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightVideoModule$16;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 1

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->cancelCountDown()V

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1940
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1941
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1942
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->isCountingDown()Z

    move-result v0

    return v0
.end method

.method public setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightVideoModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 1922
    return-void

    .line 1905
    :cond_0
    new-instance v0, Lcom/android/camera/DualSightVideoModule$16$4$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/DualSightVideoModule$16$4$1;-><init>(Lcom/android/camera/DualSightVideoModule$16$4;Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    goto :goto_0
.end method

.method public startCountdown(II)V
    .locals 1
    .param p1, "sec"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1927
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1928
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1929
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$4;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/DualSightVideoModuleUI;->startCountdown(II)V

    .line 1930
    return-void
.end method
