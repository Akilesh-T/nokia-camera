.class Lcom/android/camera/VideoHal3Module$21$7$2;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21$7;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/VideoHal3Module$21$7;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/VideoHal3Module$21$7;

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2446
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v3, "Ready for capture."

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2448
    invoke-static {}, Lcom/android/camera/VideoHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2466
    :goto_0
    return-void

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onPreviewStarted"

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2453
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0, v3}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2454
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$6500(Lcom/android/camera/VideoHal3Module;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2455
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2456
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0, v2}, Lcom/android/camera/VideoHal3Module;->access$6502(Lcom/android/camera/VideoHal3Module;Z)Z

    .line 2457
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$6600(Lcom/android/camera/VideoHal3Module;)V

    .line 2461
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 2464
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v4, v4, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v4, v4, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v4}, Lcom/android/camera/VideoHal3Module;->access$000(Lcom/android/camera/VideoHal3Module;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/VideoHal3ModuleUI;->initializeZoom(FF)V

    .line 2465
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module$21$7$2;->this$2:Lcom/android/camera/VideoHal3Module$21$7;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21$7;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v3, v3, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v3}, Lcom/android/camera/VideoHal3Module;->access$5300(Lcom/android/camera/VideoHal3Module;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->setZoomEnable(Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 2454
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2465
    goto :goto_2
.end method
