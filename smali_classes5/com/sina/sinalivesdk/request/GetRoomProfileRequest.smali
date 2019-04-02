.class public Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0x776d2d9e7443e6ffL


# instance fields
.field private room_ids:[Ljava/lang/String;

.field private room_info_filter:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestObject()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_ids:[Ljava/lang/String;

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_ids:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_ids:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "room_ids"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "operation_type"

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_info_filter:[Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_info_filter:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_info_filter:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "room_info_filter"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getRoom_ids()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_ids:[Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_info_filter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_info_filter:[Ljava/lang/String;

    return-object v0
.end method

.method public setRoom_ids([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_ids:[Ljava/lang/String;

    return-void
.end method

.method public setRoom_info_filter([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->room_info_filter:[Ljava/lang/String;

    return-void
.end method
