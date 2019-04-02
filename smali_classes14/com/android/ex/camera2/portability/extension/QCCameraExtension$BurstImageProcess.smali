.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.source "QCCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstImageProcess"
.end annotation


# instance fields
.field private final lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

.field private final mRepeatingRunable:Ljava/lang/Runnable;

.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 2
    .param p1    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "captureBurstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    iput-object p4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 245
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    invoke-direct {v0, p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;Lcom/android/ex/camera2/portability/extension/QCCameraExtension;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->finish()V

    .line 296
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 315
    :goto_0
    return-void

    .line 302
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 306
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 309
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 311
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 312
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 314
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->lCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstCompleted()V

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 288
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V

    .line 290
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->mRepeatingRunable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    return-void
.end method
