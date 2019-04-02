.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$7;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$7;->getRequestResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "room_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
