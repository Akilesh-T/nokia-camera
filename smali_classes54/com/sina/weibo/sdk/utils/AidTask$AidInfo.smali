.class public final Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
.super Ljava/lang/Object;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AidInfo"
.end annotation


# instance fields
.field private mAid:Ljava/lang/String;

.field private mSubCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 6
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;-><init>()V

    .line 127
    .local v1, "instance":Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "resObj":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    const-string v3, "AidTask"

    const-string v4, "loadAidFromNet has error !!!"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v4, "loadAidFromNet has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "resObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "AidTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadAidFromNet JSONException Msg : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v4, "loadAidFromNet has error !!!"

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "resObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, "aid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mAid:Ljava/lang/String;

    .line 134
    const-string v3, "sub"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mSubCookie:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    return-object v1
.end method


# virtual methods
.method cloneAidInfo()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;-><init>()V

    .line 145
    .local v0, "aidInfo":Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mAid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mAid:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mSubCookie:Ljava/lang/String;

    iput-object v1, v0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mSubCookie:Ljava/lang/String;

    .line 147
    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->mSubCookie:Ljava/lang/String;

    return-object v0
.end method
