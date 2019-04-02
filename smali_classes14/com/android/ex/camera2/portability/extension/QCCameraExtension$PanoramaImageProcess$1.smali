.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

.field final synthetic val$this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;Lcom/android/ex/camera2/portability/extension/QCCameraExtension;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->val$this$0:Lcom/android/ex/camera2/portability/extension/QCCameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 398
    :goto_0
    return-void

    .line 365
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;)V

    new-instance v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
