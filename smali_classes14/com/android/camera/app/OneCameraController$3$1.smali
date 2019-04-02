.class Lcom/android/camera/app/OneCameraController$3$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OneCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/OneCameraController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstCallback:Z

.field final synthetic this$1:Lcom/android/camera/app/OneCameraController$3;


# direct methods
.method constructor <init>(Lcom/android/camera/app/OneCameraController$3;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/camera/app/OneCameraController$3;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 429
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlaveCamera - onClosed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    .line 433
    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "slaveCamera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 407
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlaveCamera - onDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    .line 410
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 411
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "slave camera disconnected"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 413
    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1, "slaveCamera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # I

    .prologue
    .line 417
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlaveCamera - onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    .line 420
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 421
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slave camera error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$1100(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "slaveCamera"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlaveCamera - onOpened : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->isFirstCallback:Z

    .line 394
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->this$0:Lcom/android/camera/app/OneCameraController;

    invoke-static {v0}, Lcom/android/camera/app/OneCameraController;->access$600(Lcom/android/camera/app/OneCameraController;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Lcom/android/camera/app/OneCameraController;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "slave camera opened when AppController Paused, close it."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/OneCameraController$3$1;->this$1:Lcom/android/camera/app/OneCameraController$3;

    iget-object v0, v0, Lcom/android/camera/app/OneCameraController$3;->val$openSlaveCamFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method
