.class Lcom/android/camera/DualSightVideoModule$16$6;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/opengl/GestureChangedListener;


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
    .line 2013
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualSightChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V
    .locals 0
    .param p1, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 2071
    return-void
.end method

.method public onMoveStarted(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2016
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2018
    if-nez p1, :cond_0

    .line 2022
    :goto_0
    return-void

    .line 2019
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$5602(Lcom/android/camera/DualSightVideoModule;Z)Z

    .line 2020
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToHide()V

    .line 2021
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightVideoModuleUI;->showEditModeUI(Z)V

    goto :goto_0
.end method

.method public onMoveStopped(Z)V
    .locals 2
    .param p1, "showed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2026
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2028
    if-nez p1, :cond_0

    .line 2032
    :goto_0
    return-void

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$5602(Lcom/android/camera/DualSightVideoModule;Z)Z

    .line 2030
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2031
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightVideoModuleUI;->showEditModeUI(Z)V

    goto :goto_0
.end method

.method public onMoving(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "curRect"    # Landroid/graphics/RectF;

    .prologue
    .line 2037
    return-void
.end method

.method public onTouch()V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 2042
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$3900(Lcom/android/camera/DualSightVideoModule;)V

    .line 2043
    return-void
.end method

.method public onZoom(ZF)V
    .locals 1
    .param p1, "isMainCamera"    # Z
    .param p2, "zoomValue"    # F

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2060
    :goto_0
    return-void

    .line 2056
    :cond_0
    if-eqz p1, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    goto :goto_0

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/one/OneCamera;->setSlaveZoom(F)V

    goto :goto_0
.end method

.method public onZoomStarted()V
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2048
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2049
    return-void
.end method

.method public onZoomStopped()V
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2065
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$6;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2066
    return-void
.end method
