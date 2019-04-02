.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->stopBurst()Z

    .line 410
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->access$1600(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    .line 411
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v1, v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v0, v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1800(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 413
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V

    .line 415
    :cond_0
    return-void
.end method
