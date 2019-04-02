.class public Lcom/sina/sinalivesdk/models/RoomProfileListModel;
.super Ljava/lang/Object;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
            ">;"
        }
    .end annotation
.end field

.field private member_num:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMember_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->member_num:I

    return v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public setMember_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->member_num:I

    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "member_num"

    iget v1, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->member_num:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/models/RoomProfileModel;

    :try_start_1
    const-string v5, "room_id"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getRoom_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "name"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "introduction"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getIntroduction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "notification"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getNotification()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_0
    :try_start_2
    const-string v0, "room_info_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
