.class Lcom/android/camera/BokehHal3Module$19$2$4;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3Module$19$2;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/BokehHal3Module$19$2;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module$19$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/BokehHal3Module$19$2;

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2111
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v3, "Ready for capture."

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2113
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2130
    :goto_0
    return-void

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onPreviewStarted"

    invoke-interface {v0, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2118
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v3, v3, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v3, v3, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, v3}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2119
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$4900(Lcom/android/camera/BokehHal3Module;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2121
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0, v2}, Lcom/android/camera/BokehHal3Module;->access$4902(Lcom/android/camera/BokehHal3Module;Z)Z

    .line 2122
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$5000(Lcom/android/camera/BokehHal3Module;)V

    .line 2126
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehHal3Module;->onReadyStateChanged(Z)V

    .line 2129
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v0, v0, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$3300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3ModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v1, v1, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$19$2$4;->this$2:Lcom/android/camera/BokehHal3Module$19$2;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$19$2;->this$1:Lcom/android/camera/BokehHal3Module$19;

    iget-object v2, v2, Lcom/android/camera/BokehHal3Module$19;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v2}, Lcom/android/camera/BokehHal3Module;->access$000(Lcom/android/camera/BokehHal3Module;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehHal3ModuleUI;->initializeZoom(FF)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 2119
    goto :goto_1
.end method
