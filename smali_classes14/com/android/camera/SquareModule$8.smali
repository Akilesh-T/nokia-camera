.class Lcom/android/camera/SquareModule$8;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->onFirstPreviewArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    iget-object v2, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v2}, Lcom/android/camera/SquareModule;->access$1800(Lcom/android/camera/SquareModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onFirstPreviewArrived - Async START"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v2}, Lcom/android/camera/SquareModule;->access$1900(Lcom/android/camera/SquareModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2000(Lcom/android/camera/SquareModule;)Landroid/media/MediaActionSound;

    move-result-object v3

    if-nez v3, :cond_1

    .line 610
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    new-instance v4, Landroid/media/MediaActionSound;

    invoke-direct {v4}, Landroid/media/MediaActionSound;-><init>()V

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2002(Lcom/android/camera/SquareModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;

    .line 611
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2000(Lcom/android/camera/SquareModule;)Landroid/media/MediaActionSound;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2100(Lcom/android/camera/SquareModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    if-nez v3, :cond_2

    .line 615
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    new-instance v4, Lcom/android/camera/SoundPlayer;

    iget-object v5, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v5}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2102(Lcom/android/camera/SquareModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;

    .line 618
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2200(Lcom/android/camera/SquareModule;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 619
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2100(Lcom/android/camera/SquareModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 620
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2100(Lcom/android/camera/SquareModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 621
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2100(Lcom/android/camera/SquareModule;)Lcom/android/camera/SoundPlayer;

    move-result-object v3

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 622
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2202(Lcom/android/camera/SquareModule;Z)Z

    .line 625
    :cond_4
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2300(Lcom/android/camera/SquareModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    if-nez v3, :cond_5

    .line 626
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    new-instance v4, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2302(Lcom/android/camera/SquareModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 627
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2300(Lcom/android/camera/SquareModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 630
    :cond_5
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_shutter_sound_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2402(Lcom/android/camera/SquareModule;Z)Z

    .line 633
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_front_camera_mirror_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2502(Lcom/android/camera/SquareModule;Z)Z

    .line 637
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2600(Lcom/android/camera/SquareModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 638
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$2600(Lcom/android/camera/SquareModule;)Lcom/android/camera/burst/BurstFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$2400(Lcom/android/camera/SquareModule;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/burst/BurstFacade;->setShutterSoundEnabled(Z)V

    .line 641
    :cond_6
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_brand_logo_show_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2702(Lcom/android/camera/SquareModule;Z)Z

    .line 642
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/SquareModule;->access$2802(Lcom/android/camera/SquareModule;Z)Z

    .line 644
    iget-object v3, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$3000(Lcom/android/camera/SquareModule;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    invoke-static {v3, v0}, Lcom/android/camera/SquareModule;->access$2902(Lcom/android/camera/SquareModule;Z)Z

    .line 645
    iget-object v0, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-virtual {v0}, Lcom/android/camera/SquareModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$3100(Lcom/android/camera/SquareModule;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 648
    iget-object v0, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$3200(Lcom/android/camera/SquareModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->requireUpdateStorageSpaceAndHint()V

    .line 650
    :cond_7
    iget-object v0, p0, Lcom/android/camera/SquareModule$8;->this$0:Lcom/android/camera/SquareModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/SquareModule;->access$3102(Lcom/android/camera/SquareModule;Z)Z

    .line 651
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFirstPreviewArrived - Async DONE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 644
    goto :goto_1

    .line 651
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
