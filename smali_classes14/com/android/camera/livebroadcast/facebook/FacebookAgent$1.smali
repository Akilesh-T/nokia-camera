.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "publish_video"

    aput-object v2, v0, v3

    const-string v2, "manage_pages"

    aput-object v2, v0, v4

    const-string v2, "publish_pages"

    aput-object v2, v0, v5

    .line 86
    .local v0, "permissions":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "email"

    aput-object v2, v1, v3

    const-string v2, "public_profile"

    aput-object v2, v1, v4

    .line 87
    .local v1, "readPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseAccount :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$100(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/CallbackManager;

    move-result-object v3

    new-instance v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 161
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 162
    return-void
.end method
