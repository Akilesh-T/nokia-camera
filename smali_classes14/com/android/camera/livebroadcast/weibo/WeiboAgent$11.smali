.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field final synthetic val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$callbackCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;-><init>(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;)V

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1202(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .line 718
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$1200(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->startUpdate()V

    .line 719
    return-void
.end method
