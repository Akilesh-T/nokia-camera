.class Lcom/android/camera/DualSightVideoModule$16$2;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/video/RecordReadyStateChangeListener;


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
    .line 1751
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 1884
    return-void
.end method

.method public onRecordingStarted(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1781
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1783
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4800(Lcom/android/camera/DualSightVideoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightVideoModule$16$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$16$2$2;-><init>(Lcom/android/camera/DualSightVideoModule$16$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1790
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1791
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/DualSightVideoModuleUI;->showRecordingUI(Z)V

    .line 1792
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/android/camera/DualSightVideoModuleUI;->showLiveBroadcastUI(ZI)V

    .line 1796
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/DualSightVideoModuleUI;->updateLiveBroadcastIcon(Z)V

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToRecord()V

    .line 1799
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 1800
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1801
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1802
    return-void
.end method

.method public onRecordingStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1754
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$4700(Lcom/android/camera/DualSightVideoModule;Z)V

    .line 1756
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4800(Lcom/android/camera/DualSightVideoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightVideoModule$16$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$16$2$1;-><init>(Lcom/android/camera/DualSightVideoModule$16$2;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1764
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 1766
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1772
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1773
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1776
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 1777
    return-void
.end method

.method public onRecordingStoped()V
    .locals 7

    .prologue
    const v6, 0x7f0e000e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1819
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onRecordingStoped"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1820
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1822
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1824
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1825
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1826
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1828
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1837
    :goto_1
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 1838
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 1840
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1841
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v3, v3, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1843
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1844
    const/16 v2, 0x9

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1845
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1846
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1847
    .local v1, "notificationMgr":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/camera/util/VideoUtil;->restoreRingerMode(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V

    .line 1848
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/DualSightVideoModule$16$2$3;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightVideoModule$16$2$3;-><init>(Lcom/android/camera/DualSightVideoModule$16$2;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1830
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "notificationMgr":Landroid/app/NotificationManager;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/DualSightVideoModuleUI;->showLiveBroadcastUI(ZI)V

    .line 1832
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1833
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto/16 :goto_1
.end method

.method public onRecordingStoping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1806
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStoping"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1807
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1809
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1810
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1811
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 1812
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/DualSightVideoModuleUI;->showRecordingUI(Z)V

    .line 1814
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 1815
    return-void
.end method

.method public onRecordingUIChanged(Z)V
    .locals 6
    .param p1, "showed"    # Z

    .prologue
    const v5, 0x7f0e000e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1858
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingUIChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1859
    if-eqz p1, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightVideoModuleUI;->updateLiveBroadcastIcon(Z)V

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->showModeOptions(Z)V

    .line 1864
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1865
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 1866
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 1868
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1880
    :goto_0
    return-void

    .line 1872
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4200(Lcom/android/camera/DualSightVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1873
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/DualSightVideoModuleUI;->updateLiveBroadcastIcon(Z)V

    .line 1875
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 1878
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0
.end method
