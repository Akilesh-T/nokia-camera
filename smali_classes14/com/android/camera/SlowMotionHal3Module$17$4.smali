.class Lcom/android/camera/SlowMotionHal3Module$17$4;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


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

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$17;Lcom/android/camera/one/OneCamera;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowMotionHal3Module$17;

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iput-object p2, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 2

    .prologue
    .line 2068
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1700(Lcom/android/camera/SlowMotionHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3700(Lcom/android/camera/SlowMotionHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2112
    :goto_0
    return-void

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$100(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v1, v1, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2085
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$100(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v1, v1, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2087
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3700(Lcom/android/camera/SlowMotionHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2088
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$17$4$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$17$4$2;-><init>(Lcom/android/camera/SlowMotionHal3Module$17$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2043
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3700(Lcom/android/camera/SlowMotionHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2049
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$4;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$17$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$17$4$1;-><init>(Lcom/android/camera/SlowMotionHal3Module$17$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2064
    return-void
.end method
