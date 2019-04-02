.class Lnet/openid/appauth/PendingIntentStore;
.super Ljava/lang/Object;
.source "PendingIntentStore.java"


# static fields
.field private static sInstance:Lnet/openid/appauth/PendingIntentStore;


# instance fields
.field private mPendingIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mRequests:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mPendingIntents:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance()Lnet/openid/appauth/PendingIntentStore;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lnet/openid/appauth/PendingIntentStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/openid/appauth/PendingIntentStore;->sInstance:Lnet/openid/appauth/PendingIntentStore;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lnet/openid/appauth/PendingIntentStore;

    invoke-direct {v0}, Lnet/openid/appauth/PendingIntentStore;-><init>()V

    sput-object v0, Lnet/openid/appauth/PendingIntentStore;->sInstance:Lnet/openid/appauth/PendingIntentStore;

    .line 41
    :cond_0
    sget-object v0, Lnet/openid/appauth/PendingIntentStore;->sInstance:Lnet/openid/appauth/PendingIntentStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addPendingIntent(Lnet/openid/appauth/AuthorizationRequest;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "request"    # Lnet/openid/appauth/AuthorizationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 45
    const-string v0, "Adding pending intent for state %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mRequests:Ljava/util/Map;

    iget-object v1, p1, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mPendingIntents:Ljava/util/Map;

    iget-object v1, p1, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method clearPendingIntents()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    return-void
.end method

.method public getOriginalRequest(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "Retrieving original request for state %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/openid/appauth/AuthorizationRequest;

    return-object v0
.end method

.method public getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "Retrieving pending intent for scheme %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lnet/openid/appauth/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lnet/openid/appauth/PendingIntentStore;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method
