.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;
.super Lcom/facebook/ProfileTracker;
.source "FacebookAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/facebook/Profile;
    .param p2, "profile2"    # Lcom/facebook/Profile;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCurrentProfileChanged Profile : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Profile2 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/ProfileTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->stopTracking()V

    .line 119
    return-void

    :cond_2
    move-object v0, v1

    .line 115
    goto :goto_0
.end method
