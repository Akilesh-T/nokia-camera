.class Lcom/weibo/live/WeiboLiveCreate$1;
.super Ljava/lang/Object;
.source "WeiboLiveCreate.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weibo/live/WeiboLiveCreate;->createLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weibo/live/WeiboLiveCreate;

.field private final synthetic val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;


# direct methods
.method constructor <init>(Lcom/weibo/live/WeiboLiveCreate;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    iput-object p2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    iget-object v1, v1, Lcom/weibo/live/WeiboLiveCreate;->mAppKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "title"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$0(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "width"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$1(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "height"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$2(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "summary"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$3(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "published"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$4(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "image"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$5(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "replay"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$6(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "is_panolive"

    iget-object v2, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    invoke-static {v2}, Lcom/weibo/live/WeiboLiveCreate;->access$7(Lcom/weibo/live/WeiboLiveCreate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/weibo/live/WeiboLiveCreate$1;->this$0:Lcom/weibo/live/WeiboLiveCreate;

    const-string v2, "https://api.weibo.com/2/proxy/live/create"

    const-string v3, "POST"

    iget-object v4, p0, Lcom/weibo/live/WeiboLiveCreate$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/weibo/live/WeiboLiveCreate;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 70
    .end local v0    # "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    :cond_1
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveCreate$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 75
    return-void
.end method
