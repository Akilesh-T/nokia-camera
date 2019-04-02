.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1133
    :goto_0
    return-void

    .line 1130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BokehImageProcess - onShutter"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$1;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2700(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
