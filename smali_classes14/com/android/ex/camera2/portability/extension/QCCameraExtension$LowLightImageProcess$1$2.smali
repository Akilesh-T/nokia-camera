.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    .line 788
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowLightImageProcess - onPictureTaken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2100(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$2;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v3}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(I[BZ)V

    .line 794
    :cond_0
    monitor-exit v1

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
