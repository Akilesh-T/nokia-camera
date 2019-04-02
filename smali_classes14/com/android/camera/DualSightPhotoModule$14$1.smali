.class Lcom/android/camera/DualSightPhotoModule$14$1;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/opengl/GestureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$14;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightPhotoModule$14;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightPhotoModule$14;

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualSightChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V
    .locals 3
    .param p1, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->access$5502(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/opengl/dualsight/DualSightMode;)Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 2188
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TS] onDualSightChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v2, v2, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$5500(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2190
    return-void
.end method

.method public onMoveStarted(Z)V
    .locals 4
    .param p1, "showed"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2092
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2099
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setBeautyVisibility(I)V

    .line 2101
    if-eqz p1, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, v3}, Lcom/android/camera/DualSightPhotoModule;->access$5102(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 2103
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToHide()V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->showEditModeUI(Z)V

    .line 2105
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2106
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0
.end method

.method public onMoveStopped(Z)V
    .locals 3
    .param p1, "showed"    # Z

    .prologue
    const v2, 0x7f0e000e

    const/4 v1, 0x0

    .line 2112
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2117
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2120
    if-eqz p1, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$5102(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 2122
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2123
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->showEditModeUI(Z)V

    .line 2124
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2127
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2129
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5200(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5300(Lcom/android/camera/DualSightPhotoModule;)V

    goto :goto_0
.end method

.method public onMoving(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "curRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x3

    .line 2136
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    .line 2141
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5400(Lcom/android/camera/DualSightPhotoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2142
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5400(Lcom/android/camera/DualSightPhotoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTouch()V
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2153
    :goto_0
    return-void

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4100(Lcom/android/camera/DualSightPhotoModule;)V

    goto :goto_0
.end method

.method public onZoom(ZF)V
    .locals 1
    .param p1, "isMainCamera"    # Z
    .param p2, "zoomValue"    # F

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2174
    :goto_0
    return-void

    .line 2170
    :cond_0
    if-eqz p1, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    goto :goto_0

    .line 2173
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/camera/one/OneCamera;->setSlaveZoom(F)V

    goto :goto_0
.end method

.method public onZoomStarted()V
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    :cond_0
    :goto_0
    return-void

    .line 2161
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2162
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    goto :goto_0
.end method

.method public onZoomStopped()V
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isShutterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2183
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$1;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    goto :goto_0
.end method
