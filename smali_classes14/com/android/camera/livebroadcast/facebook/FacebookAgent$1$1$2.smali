.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->onCancel()V
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
    .line 137
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 143
    :cond_0
    return-void
.end method
