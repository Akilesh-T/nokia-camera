.class Lcom/android/camera/VideoHal3Module$21$1;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/burst/OrientationLockController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoHal3Module$21;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/VideoHal3Module$21;

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->lockOrientation()V

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$1;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->unlockOrientation()V

    goto :goto_0
.end method
