.class Lcom/android/camera/VideoHal3Module$15;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1628
    return-void
.end method

.method public onStateChanged(I)V
    .locals 7
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1575
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1623
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera button callback : mIsLiveBroadcastEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v6}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1580
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$4100(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1581
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4, v2}, Lcom/android/camera/VideoHal3Module;->access$3202(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 1582
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1583
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$4500(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$3602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1584
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$4200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1585
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "switchCamera : changed to slave camera"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1591
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 1592
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1593
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 1594
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 1595
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$3600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    goto/16 :goto_0

    .line 1587
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$3400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$3602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1588
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1589
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "switchCamera : changed to main camera"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1599
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1600
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Camera button callback : Burst Running, ignore"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    .line 1602
    .local v1, "original_id":I
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

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

    .line 1603
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1607
    .end local v1    # "original_id":I
    :cond_3
    const/4 v4, 0x4

    invoke-static {v4}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1609
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 1610
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1611
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 1615
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "PhotoModule"

    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1617
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to switch camera. cameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1618
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5, p1}, Lcom/android/camera/VideoHal3Module;->access$3500(Lcom/android/camera/VideoHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$3402(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1619
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$3400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/VideoHal3Module;->access$3602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1620
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v5}, Lcom/android/camera/VideoHal3Module;->access$3800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    invoke-static {v4, v2}, Lcom/android/camera/VideoHal3Module;->access$3702(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 1621
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/VideoHal3Module;->access$802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1622
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$15;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$4400(Lcom/android/camera/VideoHal3Module;)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 1620
    goto :goto_2
.end method
