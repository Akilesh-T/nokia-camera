.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 994
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2408(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)I

    .line 997
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2500(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$2;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(I[BZ)V

    .line 1002
    :cond_0
    monitor-exit v1

    .line 1003
    return-void

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
