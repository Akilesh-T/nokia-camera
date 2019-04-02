.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$delete:Z

.field final synthetic val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;ZLcom/android/camera/livebroadcast/weibo/WeiboLiveData;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$delete:Z

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;)V

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 663
    invoke-static {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)I

    move-result v4

    .line 595
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V

    .line 664
    return-void
.end method
