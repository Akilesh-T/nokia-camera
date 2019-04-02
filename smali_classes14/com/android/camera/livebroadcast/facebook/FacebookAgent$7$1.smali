.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListener(Ljava/lang/String;I)V
    .locals 8
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$802(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 466
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "EditDialogListener callback after streaming close, ignore."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 472
    :cond_0
    if-nez p2, :cond_2

    .line 473
    new-instance v4, Lcom/android/camera/livebroadcast/facebook/LiveData;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$accessToken:Lcom/facebook/AccessToken;

    invoke-direct {v4, v0}, Lcom/android/camera/livebroadcast/facebook/LiveData;-><init>(Lcom/facebook/AccessToken;)V

    .line 477
    .local v4, "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    :goto_1
    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, "currentId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$1100(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_account_facebook_broadcast_to"

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget v6, v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$orientation:I

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$1200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;I)V

    goto :goto_0

    .line 475
    .end local v4    # "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    .end local v7    # "currentId":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/android/camera/livebroadcast/facebook/LiveData;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v1, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$accessToken:Lcom/facebook/AccessToken;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;->val$pages:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/facebook/PageData;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/livebroadcast/facebook/LiveData;-><init>(Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/facebook/PageData;)V

    .restart local v4    # "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    goto :goto_1
.end method
