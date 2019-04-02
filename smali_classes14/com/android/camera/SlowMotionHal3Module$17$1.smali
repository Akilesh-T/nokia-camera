.class Lcom/android/camera/SlowMotionHal3Module$17$1;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/burst/OrientationLockController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module$17;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SlowMotionHal3Module$17;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowMotionHal3Module$17;

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lockOrientation()V
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->lockOrientation()V

    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAppDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$1;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->unlockOrientation()V

    goto :goto_0
.end method
