.class Lcom/android/camera/SquareModule$22$6$3;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$22$6;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/SquareModule$22$6;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$22$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/SquareModule$22$6;

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2489
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v3, "Ready for capture."

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "Ready for capture in Main thread"

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2491
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2492
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2512
    :goto_0
    return-void

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-virtual {v0, v3}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2496
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$5600(Lcom/android/camera/SquareModule;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2497
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0, v2}, Lcom/android/camera/SquareModule;->access$5602(Lcom/android/camera/SquareModule;Z)Z

    .line 2499
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$5700(Lcom/android/camera/SquareModule;)V

    .line 2500
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onPreviewStarted"

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/SquareModule;->onReadyStateChanged(Z)V

    .line 2505
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onReadyStateChanged"

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2508
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$100(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v4, v4, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v4, v4, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v4}, Lcom/android/camera/SquareModule;->access$000(Lcom/android/camera/SquareModule;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/SquareModuleUI;->initializeZoom(FF)V

    .line 2509
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$4600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModuleUI;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v3, v3, Lcom/android/camera/SquareModule$22;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$5800(Lcom/android/camera/SquareModule;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/camera/SquareModuleUI;->setZoomEnable(Z)V

    .line 2510
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "UI.initializeZoom"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2511
    iget-object v0, p0, Lcom/android/camera/SquareModule$22$6$3;->this$2:Lcom/android/camera/SquareModule$22$6;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22$6;->this$1:Lcom/android/camera/SquareModule$22;

    iget-object v0, v0, Lcom/android/camera/SquareModule$22;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 2496
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 2509
    goto :goto_2
.end method
