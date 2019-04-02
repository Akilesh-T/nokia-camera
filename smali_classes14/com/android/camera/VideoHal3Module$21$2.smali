.class Lcom/android/camera/VideoHal3Module$21$2;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/video/RecordReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoHal3Module$21;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/VideoHal3Module$21;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 2194
    return-void
.end method

.method public onRecordingStarted(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2067
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2070
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5200(Lcom/android/camera/VideoHal3Module;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoHal3Module$21$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$21$2$2;-><init>(Lcom/android/camera/VideoHal3Module$21$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2076
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2077
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToRecord()V

    .line 2078
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoHal3ModuleUI;->showRecordingUI(Z)V

    .line 2079
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2080
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 2081
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2083
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showVideoSnapShotButton()V

    .line 2084
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2097
    :goto_0
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2098
    return-void

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 2087
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2088
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2089
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 2090
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2091
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lcom/android/camera/VideoHal3ModuleUI;->showLiveBroadcastUI(ZI)V

    .line 2092
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoHal3ModuleUI;->updateLiveBroadcastIcon(Z)V

    goto :goto_0

    .line 2094
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    goto :goto_0
.end method

.method public onRecordingStarting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2033
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0, v5}, Lcom/android/camera/VideoHal3Module;->access$5100(Lcom/android/camera/VideoHal3Module;Z)V

    .line 2035
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5200(Lcom/android/camera/VideoHal3Module;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoHal3Module$21$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$21$2$1;-><init>(Lcom/android/camera/VideoHal3Module$21$2;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2043
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 2045
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2052
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2053
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2054
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5300(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectChooseManager;->showOrHidePanel(Z)V

    .line 2057
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2058
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2061
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 2063
    return-void
.end method

.method public onRecordingStoped()V
    .locals 7

    .prologue
    const v6, 0x7f0e000e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2124
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onRecordingStoped"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2125
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2167
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2127
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2128
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2129
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2130
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 2131
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2132
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2133
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$5300(Lcom/android/camera/VideoHal3Module;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2134
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/effect/EffectChooseManager;->showOrHidePanel(Z)V

    .line 2136
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2, v4}, Lcom/android/camera/VideoHal3Module;->access$5602(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 2139
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2141
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2156
    :goto_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2157
    const/16 v2, 0x9

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2158
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2159
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2160
    .local v1, "notificationMgr":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/camera/util/VideoUtil;->restoreRingerMode(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V

    .line 2161
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$1700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/VideoHal3Module$21$2$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoHal3Module$21$2$3;-><init>(Lcom/android/camera/VideoHal3Module$21$2;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2143
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "notificationMgr":Landroid/app/NotificationManager;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/android/camera/VideoHal3ModuleUI;->showLiveBroadcastUI(ZI)V

    .line 2144
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2145
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    .line 2148
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2149
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 2151
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 2152
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto/16 :goto_1
.end method

.method public onRecordingStoping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2102
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStoping"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2105
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 2106
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2107
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2108
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/VideoHal3ModuleUI;->showLiveBroadcastUI(ZI)V

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5300(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2112
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/VideoHal3ModuleUI;->showRecordingUI(Z)V

    .line 2118
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 2120
    return-void
.end method

.method public onRecordingUIChanged(Z)V
    .locals 6
    .param p1, "showed"    # Z

    .prologue
    const v5, 0x7f0e000e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2171
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecordingUIChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mIsLiveBroadcastEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v4, v4, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2190
    :goto_0
    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/VideoHal3ModuleUI;->updateLiveBroadcastIcon(Z)V

    .line 2175
    if-eqz p1, :cond_2

    .line 2176
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->showModeOptions(Z)V

    .line 2177
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2178
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2179
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 2181
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v1, v1, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v1}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2174
    goto :goto_1

    .line 2185
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2186
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2187
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->requireBlockTouch(Z)V

    .line 2188
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto/16 :goto_0
.end method
