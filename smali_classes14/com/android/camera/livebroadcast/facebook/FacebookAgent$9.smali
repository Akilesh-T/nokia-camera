.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$delete:Z

.field final synthetic val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;ZLcom/android/camera/livebroadcast/facebook/LiveData;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$delete:Z

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput p6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;)V

    iget v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$orientation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V

    .line 677
    return-void
.end method
