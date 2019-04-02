.class Lcom/android/camera/BokehHal3Module$7;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module;->onFirstPreviewArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$200(Lcom/android/camera/BokehHal3Module;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onFirstPreviewArrived - Async START"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$1800(Lcom/android/camera/BokehHal3Module;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 479
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    if-nez v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v4, Landroid/media/MediaActionSound;

    invoke-direct {v4}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$1902(Lcom/android/camera/BokehHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 481
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v4, Lcom/android/camera/SoundPlayer;

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v5}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2002(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2100(Lcom/android/camera/BokehHal3Module;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 489
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 490
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 491
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 492
    :cond_3
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2102(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 495
    :cond_4
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2200(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    if-nez v3, :cond_5

    .line 496
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    new-instance v4, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2202(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 497
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v3}, Lcom/android/camera/BokehHal3Module;->access$2200(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 500
    :cond_5
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v4}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_shutter_sound_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2302(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 503
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v4}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_front_camera_mirror_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2402(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 507
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2502(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 509
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/BokehHal3Module;->access$2602(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 511
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v4}, Lcom/android/camera/BokehHal3Module;->access$2800(Lcom/android/camera/BokehHal3Module;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v4}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-static {v3, v0}, Lcom/android/camera/BokehHal3Module;->access$2702(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 512
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 514
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$2900(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 515
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 517
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$7;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3Module;->access$2902(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 518
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstPreviewArrived - Async DONE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 511
    goto :goto_1

    .line 518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
