.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$readPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$readPermissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Login cancel"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;)V

    .line 146
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-virtual {v1, v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->logoutAccount(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 4
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 153
    .local v0, "profile":Lcom/facebook/Profile;
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v1, :cond_1

    .line 154
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use existing Access Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v2, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 159
    :cond_1
    return-void

    .line 157
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 91
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Login success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 93
    .local v2, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "unList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$readPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$readPermissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$readPermissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 97
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "All of the read permission is granted!"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$permissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 99
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$permissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->val$permissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 101
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "All of the push permission is granted!"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v1

    .line 103
    .local v1, "profile":Lcom/facebook/Profile;
    if-eqz v1, :cond_5

    .line 104
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Login Profile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    if-eqz v4, :cond_4

    .line 106
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    sget-object v5, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 131
    .end local v1    # "profile":Lcom/facebook/Profile;
    :cond_4
    :goto_2
    return-void

    .line 108
    .restart local v1    # "profile":Lcom/facebook/Profile;
    :cond_5
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/ProfileTracker;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 109
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/ProfileTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ProfileTracker;->stopTracking()V

    .line 110
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$202(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/facebook/ProfileTracker;)Lcom/facebook/ProfileTracker;

    .line 112
    :cond_6
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;)V

    invoke-static {v4, v5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$202(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/facebook/ProfileTracker;)Lcom/facebook/ProfileTracker;

    .line 121
    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/ProfileTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ProfileTracker;->startTracking()V

    goto :goto_2

    .line 124
    .end local v1    # "profile":Lcom/facebook/Profile;
    :cond_7
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Login again with push permissions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_2

    .line 128
    :cond_8
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Login again with read permissions permissions : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    iget-object v5, v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto/16 :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
