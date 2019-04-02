.class public Lcom/sina/sinalivesdk/request/SendGiftRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = 0x38941ab2db493caL


# instance fields
.field private finish:I

.field private gift_id:Ljava/lang/String;

.field private gift_num:I

.field private gift_price:Ljava/lang/String;

.field private sec_data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinish()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->finish:I

    return v0
.end method

.method public getGift_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGift_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_num:I

    return v0
.end method

.method public getGift_price()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_price:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "gift_price"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_price:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gift_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gift_num"

    iget v2, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_num:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sec_data"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->sec_data:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "finish"

    iget v2, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->finish:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSecData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->sec_data:Ljava/lang/String;

    return-object v0
.end method

.method public setFinish(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->finish:I

    return-void
.end method

.method public setGift_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_id:Ljava/lang/String;

    return-void
.end method

.method public setGift_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_num:I

    return-void
.end method

.method public setGift_price(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->gift_price:Ljava/lang/String;

    return-void
.end method

.method public setSecData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/SendGiftRequest;->sec_data:Ljava/lang/String;

    return-void
.end method
