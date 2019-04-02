.class Lcom/android/camera/TimelapseHal3Module$16$4;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


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

.field final synthetic val$camera:Lcom/android/camera/one/OneCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module$16;Lcom/android/camera/one/OneCamera;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TimelapseHal3Module$16;

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iput-object p2, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyForCapture()V
    .locals 2

    .prologue
    .line 1938
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$1700(Lcom/android/camera/TimelapseHal3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1942
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onReadyForCapture - ignore, module is paused"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1944
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1981
    :goto_0
    return-void

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v1, v1, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v1, v1, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 1956
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1957
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$1600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/TimelapseHal3Module$16$4$2;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$16$4$2;-><init>(Lcom/android/camera/TimelapseHal3Module$16$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSetupFailed()V
    .locals 3

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onSetupFailed"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1913
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->val$camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v2}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1919
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not set up preview."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$16$4;->this$1:Lcom/android/camera/TimelapseHal3Module$16;

    iget-object v0, v0, Lcom/android/camera/TimelapseHal3Module$16;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$1600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/TimelapseHal3Module$16$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$16$4$1;-><init>(Lcom/android/camera/TimelapseHal3Module$16$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1934
    return-void
.end method
