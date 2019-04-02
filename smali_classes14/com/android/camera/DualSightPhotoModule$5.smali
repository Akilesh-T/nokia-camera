.class Lcom/android/camera/DualSightPhotoModule$5;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->onFirstPreviewArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onFirstPreviewArrived - Async START"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightPhotoModule;->access$1500(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v3

    if-nez v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v4, Landroid/media/MediaActionSound;

    invoke-direct {v4}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$1602(Lcom/android/camera/DualSightPhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 519
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 523
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v4, Lcom/android/camera/SoundPlayer;

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v5}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$1702(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 526
    :cond_2
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1800(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 527
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 528
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 529
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 530
    :cond_3
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$1802(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 533
    :cond_4
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1900(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    if-nez v3, :cond_5

    .line 534
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    new-instance v4, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$1902(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 535
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v3}, Lcom/android/camera/DualSightPhotoModule;->access$1900(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 538
    :cond_5
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_shutter_sound_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$2002(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 540
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$2102(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 542
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$2202(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 544
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$2400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v4}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-static {v3, v0}, Lcom/android/camera/DualSightPhotoModule;->access$2302(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 545
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 547
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2500(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 548
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 550
    :cond_6
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$5;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/DualSightPhotoModule;->access$2502(Lcom/android/camera/DualSightPhotoModule;Z)Z

    .line 551
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstPreviewArrived - Async DONE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 544
    goto :goto_1

    .line 551
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
