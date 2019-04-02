.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->listUserPages(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$activity:Lcom/android/camera/CameraActivity;

.field final synthetic val$isClosed:Lcom/android/camera/async/Observable;

.field final synthetic val$orientation:I

.field final synthetic val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Lcom/android/camera/CameraActivity;Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$isClosed:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$activity:Lcom/android/camera/CameraActivity;

    iput-object p4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iput p6, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mLoadDialog show after streaming close, dismiss dialog - listUserPages"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 414
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v3, "params":Landroid/os/Bundle;
    const-string v0, "limit"

    const-string v1, "50"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$accessToken:Lcom/facebook/AccessToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;->val$accessToken:Lcom/facebook/AccessToken;

    .line 353
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/accounts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 413
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method
