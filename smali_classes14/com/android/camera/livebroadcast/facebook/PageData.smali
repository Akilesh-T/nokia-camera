.class public Lcom/android/camera/livebroadcast/facebook/PageData;
.super Ljava/lang/Object;
.source "PageData.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]PageData"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/facebook/PageData;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mAccessToken:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mID:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static getList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/facebook/PageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "lstData":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/facebook/PageData;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 42
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 43
    .local v1, "data":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 45
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 46
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 47
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v9, "access_token"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "accessToken":Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "name":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "id":Ljava/lang/String;
    new-instance v9, Lcom/android/camera/livebroadcast/facebook/PageData;

    invoke-direct {v9, v0, v7, v4}, Lcom/android/camera/livebroadcast/facebook/PageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/android/camera/livebroadcast/facebook/PageData;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PageData.getList() Exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "data":Lorg/json/JSONArray;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/PageData;->mName:Ljava/lang/String;

    return-object v0
.end method
