.class Lcom/android/camera/PhotoModule$15;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$500(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2979
    :goto_0
    return-void

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_front_camera_mirror_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$4702(Lcom/android/camera/PhotoModule;Z)Z

    .line 2966
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$8300(Lcom/android/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2967
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkImageSaver;->finish()V

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2971
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    new-instance v1, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$2002(Lcom/android/camera/PhotoModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 2974
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/hardware/HeadingSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 2976
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 2977
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 2978
    iget-object v0, p0, Lcom/android/camera/PhotoModule$15;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$9502(Lcom/android/camera/PhotoModule;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
