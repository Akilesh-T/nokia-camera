.class public Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;
.super Ljava/lang/Object;
.source "StatusInfo.java"


# static fields
.field private static final UNKNOWN:I = -0x1


# instance fields
.field private mLiveViews:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;->mLiveViews:I

    .line 15
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .local v6, "status":Lorg/json/JSONObject;
    const-string v7, "room_info"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "room_info"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    .local v5, "roomInfo":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 31
    .end local v5    # "roomInfo":Ljava/lang/String;
    .end local v6    # "status":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .restart local v6    # "status":Lorg/json/JSONObject;
    :cond_1
    move-object v5, v1

    .line 16
    goto :goto_0

    .line 20
    .restart local v5    # "roomInfo":Ljava/lang/String;
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v4, "room":Lorg/json/JSONObject;
    const-string v7, "counters"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "counters"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "countersInfo":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "counters":Lorg/json/JSONObject;
    const-string v7, "onlines"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "onlines"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 27
    .local v3, "onlines":I
    :goto_2
    iput v3, p0, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;->mLiveViews:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    .end local v0    # "counters":Lorg/json/JSONObject;
    .end local v1    # "countersInfo":Ljava/lang/String;
    .end local v3    # "onlines":I
    .end local v4    # "room":Lorg/json/JSONObject;
    .end local v5    # "roomInfo":Ljava/lang/String;
    .end local v6    # "status":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 26
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "counters":Lorg/json/JSONObject;
    .restart local v1    # "countersInfo":Ljava/lang/String;
    .restart local v4    # "room":Lorg/json/JSONObject;
    .restart local v5    # "roomInfo":Ljava/lang/String;
    .restart local v6    # "status":Lorg/json/JSONObject;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getLiveViews()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/livebroadcast/weibo/impl/StatusInfo;->mLiveViews:I

    return v0
.end method
