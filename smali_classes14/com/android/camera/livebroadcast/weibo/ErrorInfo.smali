.class public Lcom/android/camera/livebroadcast/weibo/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field public error:Ljava/lang/String;

.field public error_code:Ljava/lang/String;

.field public request:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/camera/livebroadcast/weibo/ErrorInfo;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 24
    :cond_0
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;

    invoke-direct {v1}, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;-><init>()V

    .line 26
    .local v1, "errorInfo":Lcom/android/camera/livebroadcast/weibo/ErrorInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error:Ljava/lang/String;

    .line 28
    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error_code:Ljava/lang/String;

    .line 29
    const-string v3, "request"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->request:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error_code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->request:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
