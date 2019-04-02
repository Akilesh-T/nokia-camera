.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->onCompleted(Lcom/facebook/GraphResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$accessToken:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    invoke-static {v5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->access$900(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2$3;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    iget-object v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    iget v6, v6, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$orientation:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$1000(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/facebook/AccessToken;Lcom/android/camera/async/Observable;Ljava/util/List;I)V

    .line 398
    return-void
.end method
