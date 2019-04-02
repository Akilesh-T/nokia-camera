.class Lcom/android/camera/panorama/PanoFacadeImpl$2;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/panorama/PanoramaResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

.field final synthetic val$imageOrientationDegrees:I

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl;Lcom/android/camera/async/MainThread;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput p3, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$imageOrientationDegrees:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanoramaCallback()Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;

    invoke-direct {v0, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$2$1;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V

    return-object v0
.end method

.method public onBurstCompleted()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;

    invoke-direct {v2, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBurstError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 233
    invoke-static {}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstError : error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/panorama/PanoFacadeImpl$2$4;

    invoke-direct {v2, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$2$4;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBurstStarted()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/panorama/PanoFacadeImpl$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$2$2;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method
