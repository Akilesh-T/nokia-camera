.class Lcom/sina/sinalivesdk/manager/DispatchManager$1;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/DispatchModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/DispatchManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/DispatchModel;
    .locals 6

    new-instance v2, Lcom/sina/sinalivesdk/models/DispatchModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/DispatchModel;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "DST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resu:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "server_address"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Lcom/sina/sinalivesdk/models/DispatchModel;->setServer_address([Ljava/lang/String;)V

    :cond_1
    const-string v0, "expired_time"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/DispatchModel;->setExpired_time(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/DispatchManager$1;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/DispatchModel;

    move-result-object v0

    return-object v0
.end method
