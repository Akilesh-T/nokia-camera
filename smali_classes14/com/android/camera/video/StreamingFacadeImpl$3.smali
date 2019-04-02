.class Lcom/android/camera/video/StreamingFacadeImpl$3;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/StreamingFacadeImpl;

.field final synthetic val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

.field final synthetic val$captureSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    iput-object p4, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "abortStage1Lifetime close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/livebroadcast/AccountAgent;->cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$3;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 308
    return-void
.end method
