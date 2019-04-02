.class Lcom/android/camera/CaptureModule$19;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 2087
    return-void
.end method

.method public onStateChanged(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2065
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2068
    :cond_0
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2070
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 2071
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 2072
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 2076
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2078
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to switch camera. cameraId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2079
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v4, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4, p1}, Lcom/android/camera/CaptureModule;->access$4500(Lcom/android/camera/CaptureModule;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/CaptureModule;->access$202(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 2080
    iget-object v3, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    iget-object v4, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/CaptureModule;->access$500(Lcom/android/camera/CaptureModule;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v1}, Lcom/android/camera/CaptureModule;->access$402(Lcom/android/camera/CaptureModule;Z)Z

    .line 2081
    iget-object v1, p0, Lcom/android/camera/CaptureModule$19;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$700(Lcom/android/camera/CaptureModule;Z)V

    goto :goto_0
.end method
