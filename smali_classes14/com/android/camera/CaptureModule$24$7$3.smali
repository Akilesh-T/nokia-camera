.class Lcom/android/camera/CaptureModule$24$7$3;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24$7;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CaptureModule$24$7;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/CaptureModule$24$7;

    .prologue
    .line 2752
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2755
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Ready for capture."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2756
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Ready for capture in Main thread"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2757
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2758
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2787
    :goto_0
    return-void

    .line 2761
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2762
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6500(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2763
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v9}, Lcom/android/camera/CaptureModule;->access$6502(Lcom/android/camera/CaptureModule;Z)Z

    .line 2764
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2765
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6600(Lcom/android/camera/CaptureModule;)V

    .line 2766
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2770
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0, v8}, Lcom/android/camera/CaptureModule;->onReadyStateChanged(Z)V

    .line 2771
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyStateChanged"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2774
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3800(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    .line 2775
    .local v7, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {v7}, Lcom/android/camera/settings/Keys;->isMotionOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v6

    .line 2776
    .local v6, "isMotionOn":Z
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v2, v2, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v2, v2, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$000(Lcom/android/camera/CaptureModule;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$6700(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$6800(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v3, v3, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$6900(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v3, v8

    .line 2777
    :goto_2
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSupportWideAndUltraWideMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v4, v4, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v4, v4, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_5

    move v4, v8

    :goto_3
    iget-object v5, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v5, v5, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v5, v5, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/CaptureModule;->access$300(Lcom/android/camera/CaptureModule;)Z

    move-result v5

    .line 2776
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CaptureModuleUI;->initializeZoom(FFZZZ)V

    .line 2778
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$5100(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v1, v1, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$5400(Lcom/android/camera/CaptureModule;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_4
    invoke-virtual {v0, v8}, Lcom/android/camera/CaptureModuleUI;->setZoomEnable(Z)V

    .line 2780
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6900(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2781
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v9}, Lcom/android/camera/CaptureModule;->access$7000(Lcom/android/camera/CaptureModule;I)V

    .line 2782
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)V

    .line 2785
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "UI.initializeZoom"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2786
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$3;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0

    .end local v6    # "isMotionOn":Z
    .end local v7    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_3
    move v0, v9

    .line 2762
    goto/16 :goto_1

    .restart local v6    # "isMotionOn":Z
    .restart local v7    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_4
    move v3, v9

    .line 2776
    goto :goto_2

    :cond_5
    move v4, v9

    .line 2777
    goto :goto_3

    :cond_6
    move v8, v9

    .line 2778
    goto :goto_4
.end method
