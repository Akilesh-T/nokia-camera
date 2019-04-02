.class public Lcom/weibo/live/WeiboLiveUploadPicture;
.super Lcom/weibo/live/WeiboLiveApiBase;
.source "WeiboLiveUploadPicture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeiboLiveUploadPicture"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/weibo/live/WeiboLiveApiBase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 29
    return-void
.end method
