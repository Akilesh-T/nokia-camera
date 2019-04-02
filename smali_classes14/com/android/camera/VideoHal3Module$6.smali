.class Lcom/android/camera/VideoHal3Module$6;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->onFirstPreviewArrived()V
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
    .line 558
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 561
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$1800(Lcom/android/camera/VideoHal3Module;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onFirstPreviewArrived - Async START"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$1900(Lcom/android/camera/VideoHal3Module;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 564
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2000(Lcom/android/camera/VideoHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    if-nez v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    new-instance v4, Landroid/media/MediaActionSound;

    invoke-direct {v4}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$2002(Lcom/android/camera/VideoHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 566
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2000(Lcom/android/camera/VideoHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 567
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2000(Lcom/android/camera/VideoHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 568
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2000(Lcom/android/camera/VideoHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 570
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 571
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    new-instance v4, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$2102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 572
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$2100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 575
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_shutter_sound_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$2202(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 577
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 578
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2200(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/video/VideoFacade;->setShutterSoundEnabled(Z)V

    .line 580
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$2302(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 582
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/VideoHal3Module;->access$2402(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 584
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$2600(Lcom/android/camera/VideoHal3Module;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-static {v3, v0}, Lcom/android/camera/VideoHal3Module;->access$2502(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 585
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 587
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2700(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 590
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    .line 596
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$6;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/VideoHal3Module;->access$2702(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 597
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstPreviewArrived - Async DONE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 584
    goto :goto_1

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
