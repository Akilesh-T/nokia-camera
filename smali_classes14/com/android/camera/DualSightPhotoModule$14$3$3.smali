.class Lcom/android/camera/DualSightPhotoModule$14$3$3;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule$14$3;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightPhotoModule$14$3;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule$14$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightPhotoModule$14$3;

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2349
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Ready for capture."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2350
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2351
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera closed, aborting."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2367
    :goto_0
    return-void

    .line 2354
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2355
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2356
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v1, v1, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2357
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->onChangeCamera(Z)V

    .line 2358
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    .line 2359
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5900(Lcom/android/camera/DualSightPhotoModule;)V

    .line 2363
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$14$3$3;->this$2:Lcom/android/camera/DualSightPhotoModule$14$3;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14$3;->this$1:Lcom/android/camera/DualSightPhotoModule$14;

    iget-object v0, v0, Lcom/android/camera/DualSightPhotoModule$14;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/DualSightPhotoModule;->onReadyStateChanged(Z)V

    goto :goto_0
.end method
