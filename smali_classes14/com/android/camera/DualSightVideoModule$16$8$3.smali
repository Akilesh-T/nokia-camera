.class Lcom/android/camera/DualSightVideoModule$16$8$3;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$8;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$8;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$8;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$8;

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2239
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Ready for capture."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2241
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2257
    :goto_0
    return-void

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2246
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v1, v1, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2247
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2248
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2249
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$6000(Lcom/android/camera/DualSightVideoModule;)V

    .line 2253
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    goto :goto_0
.end method
