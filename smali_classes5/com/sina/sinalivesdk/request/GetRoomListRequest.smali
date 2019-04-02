.class public Lcom/sina/sinalivesdk/request/GetRoomListRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = -0xfff8df312d360b7L


# instance fields
.field private count:I

.field private cursor:I

.field private room_info_filter:[Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->count:I

    return v0
.end method

.method public getCursor()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->cursor:I

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "cursor"

    iget v2, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->cursor:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "count"

    iget v2, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->count:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "operation_type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "type"

    iget v2, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->room_info_filter:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->room_info_filter:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->room_info_filter:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "room_info_filter"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRoom_info_filter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->room_info_filter:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->type:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->count:I

    return-void
.end method

.method public setCursor(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->cursor:I

    return-void
.end method

.method public setRoom_info_filter([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->room_info_filter:[Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/GetRoomListRequest;->type:I

    return-void
.end method
