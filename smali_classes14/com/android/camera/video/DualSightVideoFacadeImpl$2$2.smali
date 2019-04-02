.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstStarted()V
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
    .line 334
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 337
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInfo : what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VideoFilename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v3, v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->access$1100(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    monitor-enter v2

    .line 339
    const/4 v0, -0x1

    .line 340
    .local v0, "warningMsgId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->access$1100(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    packed-switch p2, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v1, v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$2;

    invoke-direct {v3, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$2;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 368
    :cond_1
    monitor-exit v2

    .line 369
    return-void

    .line 343
    :pswitch_0
    const v0, 0x7f08028e

    .line 345
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v1, v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-virtual {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v1, v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$1;

    invoke-direct {v3, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$1;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
