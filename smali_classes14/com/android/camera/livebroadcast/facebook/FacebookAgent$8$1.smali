.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mLoadDialog show after streaming close, dismiss dialog - createEvent"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 580
    :goto_0
    return-void

    .line 533
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v0, "description"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$eventName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "privacy"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$privacy:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    .line 537
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/live_videos"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 579
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method
