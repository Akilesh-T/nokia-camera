.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-boolean v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$delete:Z

    if-eqz v0, :cond_1

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    .line 641
    .local v4, "method":Lcom/facebook/HttpMethod;
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 642
    .local v3, "parameters":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-boolean v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$delete:Z

    if-nez v0, :cond_0

    .line 643
    const-string v0, "end_live_video"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    .line 647
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$liveData:Lcom/android/camera/livebroadcast/facebook/LiveData;

    .line 648
    invoke-virtual {v5}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getLiveID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 674
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 675
    return-void

    .line 640
    .end local v3    # "parameters":Landroid/os/Bundle;
    .end local v4    # "method":Lcom/facebook/HttpMethod;
    :cond_1
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method
