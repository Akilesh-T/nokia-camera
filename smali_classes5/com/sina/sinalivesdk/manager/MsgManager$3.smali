.class Lcom/sina/sinalivesdk/manager/MsgManager$3;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/GiftResponseModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/GiftResponseModel;
    .locals 8

    if-eqz p1, :cond_2

    const-string v0, "DST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "girg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "current_coins"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "gift_available_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "anchor_coins"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v0, Lcom/sina/sinalivesdk/models/GiftResponseModel;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/models/GiftResponseModel;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/models/GiftResponseModel;->setCurrent_coins(J)V

    invoke-virtual {v0, v4, v5}, Lcom/sina/sinalivesdk/models/GiftResponseModel;->setGift_available_num(J)V

    invoke-virtual {v0, v6, v7}, Lcom/sina/sinalivesdk/models/GiftResponseModel;->setAnchor_coins(J)V

    const-string v2, "gift_info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/sina/sinalivesdk/models/GiftModel;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/models/GiftModel;-><init>()V

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "total_num"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4}, Lcom/sina/sinalivesdk/models/GiftModel;->setId(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/sina/sinalivesdk/models/GiftModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/sina/sinalivesdk/models/GiftModel;->setType(I)V

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/models/GiftModel;->setTotal_num(I)V

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/models/GiftResponseModel;->setGift_info(Lcom/sina/sinalivesdk/models/GiftModel;)V

    :cond_0
    const-string v2, "extension"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/GiftResponseModel;->setExtension(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/MsgManager$3;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/GiftResponseModel;

    move-result-object v0

    return-object v0
.end method
