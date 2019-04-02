.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 383
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0, v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$802(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;I)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)I

    .line 391
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;->access$800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->addFrame(I[BZ)V

    .line 395
    :cond_1
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
