.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->logoutAccount(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 2
    .param p1, "graphResponse"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 193
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "logoutAccount - onCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 195
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    :cond_0
    return-void
.end method
