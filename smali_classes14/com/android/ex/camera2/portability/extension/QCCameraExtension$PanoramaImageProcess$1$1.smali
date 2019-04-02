.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "PanoramaImageProcess - onShutter"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 372
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
