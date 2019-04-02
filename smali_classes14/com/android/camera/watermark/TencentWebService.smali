.class public Lcom/android/camera/watermark/TencentWebService;
.super Ljava/lang/Object;
.source "TencentWebService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/watermark/TencentWebService$TencentConst;,
        Lcom/android/camera/watermark/TencentWebService$POIResponse;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "QF4BZ-RUYC6-CWGSF-M7MY7-URU4J-5NB2M"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static sInstance:Lcom/android/camera/watermark/TencentWebService;


# instance fields
.field private mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TencentWebService"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/watermark/TencentWebService;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/watermark/TencentWebService;->sInstance:Lcom/android/camera/watermark/TencentWebService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/watermark/TencentWebService;->mQueue:Lcom/android/volley/RequestQueue;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/watermark/TencentWebService;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/watermark/TencentWebService;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/watermark/TencentWebService;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/watermark/TencentWebService;->parsePOI(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/camera/watermark/TencentWebService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/watermark/TencentWebService;->sInstance:Lcom/android/camera/watermark/TencentWebService;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/camera/watermark/TencentWebService;

    invoke-direct {v0}, Lcom/android/camera/watermark/TencentWebService;-><init>()V

    sput-object v0, Lcom/android/camera/watermark/TencentWebService;->sInstance:Lcom/android/camera/watermark/TencentWebService;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/camera/watermark/TencentWebService;->sInstance:Lcom/android/camera/watermark/TencentWebService;

    return-object v0
.end method

.method private parsePOI(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "lstPOI":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "address"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    .line 110
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    const-string v7, "pois"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v6

    .line 114
    .local v4, "resultPOI":Lorg/json/JSONArray;
    :goto_1
    if-eqz v4, :cond_4

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 116
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .local v3, "object":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "title":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 120
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "resultPOI":Lorg/json/JSONArray;
    :cond_2
    const-string v7, "address"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    .restart local v0    # "address":Ljava/lang/String;
    :cond_3
    const-string v6, "pois"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1

    .line 126
    .restart local v4    # "resultPOI":Lorg/json/JSONArray;
    :cond_4
    return-object v2
.end method


# virtual methods
.method public requestPOI(DDLcom/android/camera/watermark/TencentWebService$POIResponse;)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "altitude"    # D
    .param p5, "mPOIResponse"    # Lcom/android/camera/watermark/TencentWebService$POIResponse;

    .prologue
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://apis.map.qq.com/ws/geocoder/v1/?location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "QF4BZ-RUYC6-CWGSF-M7MY7-URU4J-5NB2M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&get_poi=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "webAPI":Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Lcom/android/camera/watermark/TencentWebService$1;

    invoke-direct {v2, p0, p5}, Lcom/android/camera/watermark/TencentWebService$1;-><init>(Lcom/android/camera/watermark/TencentWebService;Lcom/android/camera/watermark/TencentWebService$POIResponse;)V

    new-instance v3, Lcom/android/camera/watermark/TencentWebService$2;

    invoke-direct {v3, p0, p5}, Lcom/android/camera/watermark/TencentWebService$2;-><init>(Lcom/android/camera/watermark/TencentWebService;Lcom/android/camera/watermark/TencentWebService$POIResponse;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 103
    .local v0, "getRequest":Lcom/android/volley/toolbox/StringRequest;
    sget-object v2, Lcom/android/camera/watermark/TencentWebService;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPOI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/watermark/TencentWebService;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 105
    return-void
.end method
