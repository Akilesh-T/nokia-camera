.class Lcom/android/camera/watermark/TencentWebService$1;
.super Ljava/lang/Object;
.source "TencentWebService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/watermark/TencentWebService;->requestPOI(DDLcom/android/camera/watermark/TencentWebService$POIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/watermark/TencentWebService;

.field final synthetic val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;


# direct methods
.method constructor <init>(Lcom/android/camera/watermark/TencentWebService;Lcom/android/camera/watermark/TencentWebService$POIResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/watermark/TencentWebService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/watermark/TencentWebService$1;->this$0:Lcom/android/camera/watermark/TencentWebService;

    iput-object p2, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/watermark/TencentWebService$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 74
    invoke-static {}, Lcom/android/camera/watermark/TencentWebService;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "response":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, "status":I
    if-eqz v4, :cond_1

    .line 79
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/camera/watermark/TencentWebService$POIResponse;->onResult(ILjava/util/List;)V

    .line 93
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v4    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v2    # "response":Lorg/json/JSONObject;
    .restart local v4    # "status":I
    :cond_1
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 85
    .local v3, "result":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->this$0:Lcom/android/camera/watermark/TencentWebService;

    invoke-static {v5, v3}, Lcom/android/camera/watermark/TencentWebService;->access$100(Lcom/android/camera/watermark/TencentWebService;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "lstPOI":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    if-eqz v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v1}, Lcom/android/camera/watermark/TencentWebService$POIResponse;->onResult(ILjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "lstPOI":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/android/camera/watermark/TencentWebService$1;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    invoke-interface {v5, v8, v9}, Lcom/android/camera/watermark/TencentWebService$POIResponse;->onResult(ILjava/util/List;)V

    goto :goto_0
.end method
