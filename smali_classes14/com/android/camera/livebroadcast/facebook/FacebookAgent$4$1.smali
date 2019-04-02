.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mLoadDialog show after streaming close, dismiss dialog. - createLiveBroadcast"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 304
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Start refreshCurrentAccessTokenAsync...."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$accessToken:Lcom/facebook/AccessToken;

    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    goto :goto_0
.end method
