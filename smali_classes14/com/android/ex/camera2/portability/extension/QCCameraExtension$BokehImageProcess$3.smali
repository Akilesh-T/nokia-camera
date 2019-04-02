.class Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;
.super Ljava/lang/Object;
.source "QCCameraExtension.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 1143
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1146
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BokehImageProcess - onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2808(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)I

    .line 1149
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2600(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$2900(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    monitor-exit v1

    .line 1159
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess$3;->this$1:Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;->access$3000(Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;)V

    .line 1158
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
