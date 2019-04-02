.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 5
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 287
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTokenRefreshFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "OnTokenRefreshFailed after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080113

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 260
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTokenRefreshed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$isClosed:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "OnTokenRefreshed after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 283
    :goto_0
    return-void

    .line 273
    :cond_0
    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_video"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "manage_pages"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_pages"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    :cond_1
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Can\'t get access token after refresh it during create event."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$activity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$isClosed:Lcom/android/camera/async/Observable;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    iget v5, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;->val$orientation:I

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$600(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;I)V

    goto :goto_0
.end method
