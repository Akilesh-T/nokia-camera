.class Lcom/android/camera/TimelapseHal3Module$16$1;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/burst/OrientationLockController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/TimelapseHal3Module$16;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TimelapseHal3Module$16;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->lockOrientation()V

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$1;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->unlockOrientation()V

    goto :goto_0
.end method
