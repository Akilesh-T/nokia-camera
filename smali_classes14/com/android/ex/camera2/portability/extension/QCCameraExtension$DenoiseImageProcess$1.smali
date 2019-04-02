.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


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
    .line 979
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2200(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 987
    :goto_0
    return-void

    .line 984
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;->access$2300(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 986
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "DenoiseImageProcess - onShutter"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
