.class Lcom/android/camera/PanoramaHal3Module$15$3;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module$15;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaHal3Module$15;

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module$15;Lcom/android/camera/one/OneCamera;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PanoramaHal3Module$15;

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iput-object p2, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 2

    .prologue
    .line 1762
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1763
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1500(Lcom/android/camera/PanoramaHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1767
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1804
    :goto_0
    return-void

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 1779
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v1, v1, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 1780
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1781
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoramaHal3Module$15$3$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$15$3$2;-><init>(Lcom/android/camera/PanoramaHal3Module$15$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1743
    invoke-static {}, Lcom/android/camera/PanoramaHal3Module;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$15$3;->this$1:Lcom/android/camera/PanoramaHal3Module$15;

    iget-object v0, v0, Lcom/android/camera/PanoramaHal3Module$15;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$1400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PanoramaHal3Module$15$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$15$3$1;-><init>(Lcom/android/camera/PanoramaHal3Module$15$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1758
    return-void
.end method
