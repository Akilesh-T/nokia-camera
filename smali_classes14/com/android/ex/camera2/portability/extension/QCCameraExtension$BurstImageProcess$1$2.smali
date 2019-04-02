.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 271
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BurstImageProcess - onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->access$000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->access$000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;->access$300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;)Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstPictureTaken([B)V

    .line 276
    :cond_0
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
