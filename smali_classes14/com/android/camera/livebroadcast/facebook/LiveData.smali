.class public Lcom/android/camera/livebroadcast/facebook/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# instance fields
.field private mAccessToken:Lcom/facebook/AccessToken;

.field private mLiveID:Ljava/lang/String;

.field private mRTMPPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mAccessToken:Lcom/facebook/AccessToken;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/facebook/PageData;)V
    .locals 10
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "pageData"    # Lcom/android/camera/livebroadcast/facebook/PageData;

    .prologue
    const/4 v5, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/facebook/AccessToken;

    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/facebook/PageData;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/facebook/PageData;->getID()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    sget-object v6, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    .line 22
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v7

    .line 23
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v8

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mAccessToken:Lcom/facebook/AccessToken;

    .line 25
    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mAccessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public getLiveID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mLiveID:Ljava/lang/String;

    return-object v0
.end method

.method public getRTMPPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mRTMPPath:Ljava/lang/String;

    return-object v0
.end method

.method public setLiveID(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveID"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mLiveID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRTMPPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "rtmpPath"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/LiveData;->mRTMPPath:Ljava/lang/String;

    .line 33
    return-void
.end method
