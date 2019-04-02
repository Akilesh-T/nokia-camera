.class public Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
.super Ljava/lang/Object;
.source "WeiboLiveData.java"


# instance fields
.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mID:Ljava/lang/String;

.field private mRTMPPath:Ljava/lang/String;

.field private mRoomID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rtmpPath"    # Ljava/lang/String;
    .param p3, "roomID"    # Ljava/lang/String;
    .param p4, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mID:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mRTMPPath:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mRoomID:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 17
    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getRTMPPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mRTMPPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->mRoomID:Ljava/lang/String;

    return-object v0
.end method
