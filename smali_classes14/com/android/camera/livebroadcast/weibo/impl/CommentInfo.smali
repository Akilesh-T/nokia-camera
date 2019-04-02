.class public Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;
.super Ljava/lang/Object;
.source "CommentInfo.java"


# instance fields
.field private mAvatar:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mMsgID:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "comment":Lorg/json/JSONObject;
    const-string v5, "mid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "mid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mMsgID:Ljava/lang/String;

    .line 21
    const-string v5, "content"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "content"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mContent:Ljava/lang/String;

    .line 22
    const-string v5, "sender_info"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "sender_info"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "senderInfo":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 24
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "sender":Lorg/json/JSONObject;
    const-string v5, "avatar"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "avatar"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    .line 26
    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    iget-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    const-string v6, "http://"

    const-string v7, "https://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    .line 29
    :cond_0
    const-string v5, "nickname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mNickName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "comment":Lorg/json/JSONObject;
    .end local v2    # "sender":Lorg/json/JSONObject;
    .end local v3    # "senderInfo":Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .restart local v0    # "comment":Lorg/json/JSONObject;
    :cond_3
    move-object v5, v4

    .line 20
    goto :goto_0

    :cond_4
    move-object v5, v4

    .line 21
    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 22
    goto :goto_2

    .restart local v2    # "sender":Lorg/json/JSONObject;
    .restart local v3    # "senderInfo":Ljava/lang/String;
    :cond_6
    move-object v5, v4

    .line 25
    goto :goto_3

    .line 31
    .end local v0    # "comment":Lorg/json/JSONObject;
    .end local v2    # "sender":Lorg/json/JSONObject;
    .end local v3    # "senderInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mMsgID:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/impl/CommentInfo;->mNickName:Ljava/lang/String;

    return-object v0
.end method
