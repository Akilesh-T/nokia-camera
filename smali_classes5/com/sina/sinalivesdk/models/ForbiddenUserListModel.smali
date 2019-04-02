.class public Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;
.super Ljava/lang/Object;


# instance fields
.field private members_shutted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private room_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMembers_shutted()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->members_shutted:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public setMembers_shutted(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/UserModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->members_shutted:Ljava/util/ArrayList;

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->room_id:Ljava/lang/String;

    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "room_id"

    iget-object v1, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->room_id:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->members_shutted:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->members_shutted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->members_shutted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/models/UserModel;

    :try_start_1
    const-string v5, "uid"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "nickname"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "avatar"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "level"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getLevel()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "shutted_until"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/UserModel;->getShutted_until()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
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
    const-string v0, "members_shutted"

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
