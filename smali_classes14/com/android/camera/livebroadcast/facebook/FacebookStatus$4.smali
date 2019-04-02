.class Lcom/android/camera/livebroadcast/facebook/FacebookStatus$4;
.super Ljava/lang/Object;
.source "FacebookStatus.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getReactionsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 149
    sget-boolean v8, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateStatus(reactions) response="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    .local v4, "objResponse":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "data"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 154
    .local v5, "reactions":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 155
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 156
    .local v3, "objComment":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "thumbnailURL":Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v8}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v8

    new-instance v9, Lcom/android/camera/livebroadcast/status/Reactions;

    invoke-direct {v9, v2, v7, v6}, Lcom/android/camera/livebroadcast/status/Reactions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addReactions(Lcom/android/camera/livebroadcast/status/Reactions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "objComment":Lorg/json/JSONObject;
    .end local v5    # "reactions":Lorg/json/JSONArray;
    .end local v6    # "thumbnailURL":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateStatus(reactions) Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
