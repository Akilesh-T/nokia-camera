.class Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;
.super Ljava/lang/Object;
.source "FacebookStatus.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->updateFacebookStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 6
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 85
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "updateStatus() end"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->copy()Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v0

    .line 88
    .local v0, "status":Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-result-object v1

    .line 89
    .local v1, "statusCallback":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    if-eqz v1, :cond_0

    .line 90
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->UPDATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "The status callback is not existed anymore."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
