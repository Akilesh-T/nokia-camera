.class Lcom/android/camera/BeautyHal3Module$15;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1464
    return-void
.end method

.method public onStateChanged(I)V
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1442
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v2}, Lcom/android/camera/BeautyHal3Module;->access$200(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1445
    :cond_0
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1447
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v2}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabledImmediately(Z)V

    .line 1448
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v2}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1449
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->disableCameraButtonAndBlock()V

    .line 1453
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v2}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v3}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1455
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. cameraId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1456
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v3, p1}, Lcom/android/camera/BeautyHal3Module;->access$3500(Lcom/android/camera/BeautyHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/BeautyHal3Module;->access$3402(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;

    .line 1457
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v3}, Lcom/android/camera/BeautyHal3Module;->access$3700(Lcom/android/camera/BeautyHal3Module;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v1}, Lcom/android/camera/BeautyHal3Module;->access$3602(Lcom/android/camera/BeautyHal3Module;Z)Z

    .line 1458
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$15;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$3300(Lcom/android/camera/BeautyHal3Module;)V

    goto :goto_0
.end method
