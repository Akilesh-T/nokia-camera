.class Lcom/android/camera/burst/BurstFacadeImpl$2;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeImpl;

.field final synthetic val$captureSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p3, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->unregisterImageSavedListener()V

    .line 176
    return-void
.end method

.method public onBurstError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 157
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstError : error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/burst/BurstFacadeImpl$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/BurstFacadeImpl$2$1;-><init>(Lcom/android/camera/burst/BurstFacadeImpl$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onBurstStarted()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    return-void
.end method
