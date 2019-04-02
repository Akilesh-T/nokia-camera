.class Lcom/android/camera/SlowMotionHal3Module$15;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1558
    return-void
.end method

.method public onStateChanged(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1527
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$1700(Lcom/android/camera/SlowMotionHal3Module;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1532
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Camera button callback : Burst Running, ignore"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1533
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    .line 1534
    .local v1, "original_id":I
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera button callback : reset camera id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1539
    .end local v1    # "original_id":I
    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1541
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 1542
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1543
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 1547
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v3}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "PhotoModule"

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1549
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to switch camera. cameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1550
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v4, p1}, Lcom/android/camera/SlowMotionHal3Module;->access$3400(Lcom/android/camera/SlowMotionHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/SlowMotionHal3Module;->access$3302(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1551
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v4}, Lcom/android/camera/SlowMotionHal3Module;->access$3600(Lcom/android/camera/SlowMotionHal3Module;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/SlowMotionHal3Module;->access$3502(Lcom/android/camera/SlowMotionHal3Module;Z)Z

    .line 1552
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$15;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$3200(Lcom/android/camera/SlowMotionHal3Module;)V

    goto/16 :goto_0
.end method
