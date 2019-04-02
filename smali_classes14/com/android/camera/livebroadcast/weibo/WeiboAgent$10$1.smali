.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-boolean v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$delete:Z

    if-eqz v2, :cond_0

    .line 599
    new-instance v0, Lcom/weibo/live/WeiboLiveDelete;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "1758031757"

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getAccessToken()Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/weibo/live/WeiboLiveDelete;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 600
    .local v0, "weiboLiveDelete":Lcom/weibo/live/WeiboLiveDelete;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/weibo/live/WeiboLiveDelete;->setId(Ljava/lang/String;)V

    .line 601
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;)V

    invoke-virtual {v0, v2}, Lcom/weibo/live/WeiboLiveDelete;->deleteLive(Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 662
    .end local v0    # "weiboLiveDelete":Lcom/weibo/live/WeiboLiveDelete;
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v1, Lcom/weibo/live/WeiboLiveUpdate;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "1758031757"

    iget-object v4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getAccessToken()Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/weibo/live/WeiboLiveUpdate;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 631
    .local v1, "weiboLiveUpdate":Lcom/weibo/live/WeiboLiveUpdate;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$liveData:Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weibo/live/WeiboLiveUpdate;->setId(Ljava/lang/String;)V

    .line 632
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/weibo/live/WeiboLiveUpdate;->setStop(Ljava/lang/String;)V

    .line 633
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;)V

    invoke-virtual {v1, v2}, Lcom/weibo/live/WeiboLiveUpdate;->updateLive(Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method
