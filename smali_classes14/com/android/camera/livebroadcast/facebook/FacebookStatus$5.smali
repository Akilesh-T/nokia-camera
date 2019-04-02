.class Lcom/android/camera/livebroadcast/facebook/FacebookStatus$5;
.super Ljava/lang/Object;
.source "FacebookStatus.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
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
    .line 179
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$5;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 182
    sget-boolean v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus() response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    .local v1, "objResponse":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "live_views"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "viewCount":I
    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$5;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->setViewCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "viewCount":I
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus() Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
