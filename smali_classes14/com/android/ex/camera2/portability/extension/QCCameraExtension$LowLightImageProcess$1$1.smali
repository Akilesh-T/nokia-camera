.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


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
    .line 759
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1708(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    .line 766
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LowLightImageProcess - onShutter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1800(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 770
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 773
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$1600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1$1;->this$2:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;->access$2000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 776
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 764
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
