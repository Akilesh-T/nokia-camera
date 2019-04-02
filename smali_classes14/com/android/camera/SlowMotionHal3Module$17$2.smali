.class Lcom/android/camera/SlowMotionHal3Module$17$2;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/video/RecordReadyStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module$17;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SlowMotionHal3Module$17;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowMotionHal3Module$17;

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstReadyStateChanged(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 1952
    return-void
.end method

.method public onRecordingStarted(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1883
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1886
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3900(Lcom/android/camera/SlowMotionHal3Module;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$17$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$17$2$2;-><init>(Lcom/android/camera/SlowMotionHal3Module$17$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1892
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1893
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1894
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/SlowMotionHal3ModuleUI;->showRecordingUI(Z)V

    .line 1895
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1896
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions(Z)V

    .line 1897
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showVideoSnapShotButton()V

    .line 1898
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1899
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToRecord()V

    .line 1900
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1901
    return-void
.end method

.method public onRecordingStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1861
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStarting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/SlowMotionHal3Module;->access$3800(Lcom/android/camera/SlowMotionHal3Module;Z)V

    .line 1863
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3900(Lcom/android/camera/SlowMotionHal3Module;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$17$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$17$2$1;-><init>(Lcom/android/camera/SlowMotionHal3Module$17$2;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1871
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CameraUtil;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 1872
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1873
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1874
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1875
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1876
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1878
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->startVideoRecordBtnAnim(I)V

    .line 1879
    return-void
.end method

.method public onRecordingStoped()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1921
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v5, "onRecordingStoped"

    invoke-static {v2, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1922
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1924
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1925
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v5

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1926
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1927
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1929
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1930
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 1931
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1932
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1933
    const/16 v2, 0x9

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1934
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1935
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1936
    .local v1, "notificationMgr":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/camera/util/VideoUtil;->restoreRingerMode(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V

    .line 1937
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v2, v2, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$1600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v2

    new-instance v3, Lcom/android/camera/SlowMotionHal3Module$17$2$3;

    invoke-direct {v3, p0}, Lcom/android/camera/SlowMotionHal3Module$17$2$3;-><init>(Lcom/android/camera/SlowMotionHal3Module$17$2;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "notificationMgr":Landroid/app/NotificationManager;
    :cond_2
    move v2, v4

    .line 1925
    goto/16 :goto_1
.end method

.method public onRecordingStoping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1905
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStoping"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1907
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1908
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1909
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1910
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1912
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SlowMotionHal3ModuleUI;->showRecordingUI(Z)V

    .line 1916
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 1917
    return-void
.end method

.method public onRecordingUIChanged(Z)V
    .locals 0
    .param p1, "showed"    # Z

    .prologue
    .line 1948
    return-void
.end method
