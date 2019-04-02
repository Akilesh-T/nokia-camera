.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLive(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$eventName:Ljava/lang/String;

    iput p6, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "streaming close, ignore. - createLive"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;)V

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 373
    invoke-static {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)I

    move-result v4

    .line 242
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
