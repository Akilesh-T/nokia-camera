.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/net/openapi/RefreshTokenApi;->create(Landroid/content/Context;)Lcom/sina/weibo/sdk/net/openapi/RefreshTokenApi;

    move-result-object v0

    const-string v1, "1758031757"

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;

    invoke-direct {v3, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/openapi/RefreshTokenApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 372
    return-void
.end method
