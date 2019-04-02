.class Lcom/android/camera/PanoramaHal3Module$15$3$2;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module$15$3;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/PanoramaHal3Module$15$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module$15$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/PanoramaHal3Module$15$3;

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1784
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Ready for capture."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1786
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1802
    :goto_0
    return-void

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1791
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1792
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$4000(Lcom/android/camera/PanoramaHal3Module;)V

    .line 1798
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoramaHal3Module;->onReadyStateChanged(Z)V

    .line 1801
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getMaxZoom()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module$15$3$2;->this$2:Lcom/android/camera/PanoramaHal3Module$15$3;

    iget-object v2, v2, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v2, v2, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v2}, Lcom/android/camera/PanoramaHal3Module;->access$3700(Lcom/android/camera/PanoramaHal3Module;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PanoramaHal3ModuleUI;->initializeZoom(FF)V

    goto/16 :goto_0
.end method
