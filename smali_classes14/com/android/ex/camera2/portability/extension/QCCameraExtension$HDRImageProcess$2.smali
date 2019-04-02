.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "HDRImageProcess - onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1408(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)I

    .line 597
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;->access$1400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(I[BZ)V

    .line 602
    :cond_0
    monitor-exit v1

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
