.class Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;
.super Ljava/lang/Object;
.source "FacebookStatus.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getCommentsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
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
    .line 107
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 15
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 110
    sget-boolean v12, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateStatus(comments) response="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v9

    .line 113
    .local v9, "objResponse":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "data"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 114
    .local v0, "comments":Lorg/json/JSONArray;
    iget-object v12, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v12}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->clearComments()V

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 117
    .local v7, "objComment":Lorg/json/JSONObject;
    const-string v12, "id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "id":Ljava/lang/String;
    const-string v12, "from"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 119
    .local v8, "objFrom":Lorg/json/JSONObject;
    const-string v12, "name"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "name":Ljava/lang/String;
    const-string v12, "id"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "userId":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "thumbnailURL":Ljava/lang/String;
    const-string v12, "message"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "message":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v12}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v12

    new-instance v13, Lcom/android/camera/livebroadcast/status/Comment;

    invoke-direct {v13, v3, v6, v5, v10}, Lcom/android/camera/livebroadcast/status/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->addComment(Lcom/android/camera/livebroadcast/status/Comment;)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "objComment":Lorg/json/JSONObject;
    .end local v8    # "objFrom":Lorg/json/JSONObject;
    .end local v10    # "thumbnailURL":Ljava/lang/String;
    .end local v11    # "userId":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$600(Lorg/json/JSONObject;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "lastCursorsAfter":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 128
    iget-object v12, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v12, v4}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$702(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    sget-boolean v12, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateStatus(comments) mLastAfterComments="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v14}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$700(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "comments":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "lastCursorsAfter":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateStatus(comments) Exception="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
