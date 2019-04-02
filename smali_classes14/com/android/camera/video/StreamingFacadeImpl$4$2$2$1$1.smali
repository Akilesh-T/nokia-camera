.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

.field final synthetic val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$4"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iput-object p4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 498
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1502(Lcom/android/camera/video/StreamingFacadeImpl;J)J

    .line 501
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1500(Lcom/android/camera/video/StreamingFacadeImpl;)J

    move-result-wide v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordStart(JF)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarted(I)V

    .line 504
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1600(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1600(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 507
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1700(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1900(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/LiveBroadcastStatusController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/video/LiveBroadcastStatusController;->initStatus(Lcom/android/camera/livebroadcast/status/CommentsAdapter;)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2000(Lcom/android/camera/video/StreamingFacadeImpl;)V

    .line 511
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2100(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800cf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v9, v9, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v9, v9, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v9, v9, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v9, v9, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v9}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2100(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v10, v10, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v10, v10, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v10, v10, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v10, v10, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    invoke-interface {v10}, Lcom/android/camera/livebroadcast/AccountAgent;->getAgentTitleResId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 531
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-ne v0, v1, :cond_2

    .line 513
    iget-object v8, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$result:Ljava/lang/Object;

    check-cast v8, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 514
    .local v8, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 515
    invoke-virtual {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/livebroadcast/status/Comment;

    .line 516
    .local v6, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1700(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1700(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->notifyItemInserted(I)V

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 519
    .end local v6    # "comment":Lcom/android/camera/livebroadcast/status/Comment;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1900(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/LiveBroadcastStatusController;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getViewCount()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getReactions()Ljava/util/List;

    move-result-object v2

    .line 520
    invoke-virtual {v8}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1700(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    .line 519
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/video/LiveBroadcastStatusController;->updateStatus(ILjava/util/List;Ljava/util/List;II)V

    goto/16 :goto_0

    .line 522
    .end local v7    # "i":I
    .end local v8    # "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z

    .line 524
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-eq v0, v1, :cond_3

    .line 525
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpect Stage when startLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  abort streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpect Stage when startLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_3
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when startLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  abort streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->val$result:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1$1;->this$4:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2300(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V

    goto/16 :goto_0
.end method
