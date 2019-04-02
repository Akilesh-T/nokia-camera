.class Lcom/android/camera/video/StreamingFacadeImpl$4;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


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

.field final synthetic val$abortStage1Lifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

.field final synthetic val$burstIntent:Lcom/android/camera/burst/BurstFacade$BurstIntent;

.field final synthetic val$captureSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic val$imageOrientationDegrees:I

.field final synthetic val$isClosed:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$isStarted:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$recordListener:Lcom/android/camera/session/VideoRecordListener;

.field final synthetic val$streaming_orientation:I

.field final synthetic val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/livebroadcast/AccountAgent;ILcom/android/camera/async/Lifetime;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;Lcom/android/camera/async/ConcurrentState;ILcom/android/camera/livebroadcast/LiveBroadcastManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iput p4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    iput-object p5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$abortStage1Lifetime:Lcom/android/camera/async/Lifetime;

    iput-object p6, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    iput-object p7, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    iput-object p8, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$burstIntent:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iput-object p9, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p10, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iput-object p11, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isStarted:Lcom/android/camera/async/ConcurrentState;

    iput p12, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$imageOrientationDegrees:I

    iput-object p13, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createLiveBroadcast result : Stage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ErrorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isClosed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p2, v2, :cond_0

    .line 320
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "get createLiveBroadcast result after streaming stop : abort streaming"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-static {v2, v3, p4, v4, v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$700(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne p1, v2, :cond_2

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p2, v2, :cond_2

    .line 327
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Creating LiveBroadcast success, start count down."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Lifetime;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$abortStage1Lifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2, v3}, Lcom/android/camera/async/Lifetime;->remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 331
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 333
    .local v1, "localLifetime":Lcom/android/camera/async/Lifetime;
    new-instance v0, Lcom/android/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 334
    .local v0, "abortStage2Lifetime":Lcom/android/camera/async/Lifetime;
    const/4 v2, 0x0

    new-instance v3, Lcom/android/camera/video/StreamingFacadeImpl$4$1;

    invoke-direct {v3, p0, p4}, Lcom/android/camera/video/StreamingFacadeImpl$4$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/async/Lifetime;->add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 345
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 347
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;

    move-result-object v2

    new-instance v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    invoke-direct {v3, p0, v0, p4, v1}, Lcom/android/camera/video/StreamingFacadeImpl$4$2;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Lcom/android/camera/async/Lifetime;Ljava/lang/Object;Lcom/android/camera/async/Lifetime;)V

    invoke-interface {v2, v3}, Lcom/android/camera/video/CountdownController;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 626
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;

    move-result-object v2

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-interface {v2, v3, v4}, Lcom/android/camera/video/CountdownController;->startCountdown(II)V

    goto :goto_0

    .line 628
    .end local v0    # "abortStage2Lifetime":Lcom/android/camera/async/Lifetime;
    .end local v1    # "localLifetime":Lcom/android/camera/async/Lifetime;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/video/StreamingFacadeImpl$4$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/camera/video/StreamingFacadeImpl$4$3;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
