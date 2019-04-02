.class public Lcom/facebook/appevents/codeless/ViewIndexer;
.super Ljava/lang/Object;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;
    }
.end annotation


# static fields
.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app_version"

.field private static final PLATFORM_PARAM:Ljava/lang/String; = "platform"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static final TREE_PARAM:Ljava/lang/String; = "tree"

.field private static instance:Lcom/facebook/appevents/codeless/ViewIndexer;


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private indexingTimer:Ljava/util/Timer;

.field private previousDigest:Ljava/lang/String;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;

    .line 79
    sput-object p0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/codeless/ViewIndexer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    return-object p1
.end method

.method public static buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "appIndex"    # Ljava/lang/String;
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "requestType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    if-nez p0, :cond_0

    .line 276
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s/app_indexing"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 249
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {p1, v2, v0, v0}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 253
    .local v0, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 254
    .local v1, "requestParameters":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 255
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    .restart local v1    # "requestParameters":Landroid/os/Bundle;
    :cond_1
    const-string v2, "tree"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "app_version"

    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "request_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "app_indexing"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    const-string v2, "device_session_id"

    .line 264
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 269
    new-instance v2, Lcom/facebook/appevents/codeless/ViewIndexer$4;

    invoke-direct {v2}, Lcom/facebook/appevents/codeless/ViewIndexer$4;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_0
.end method

.method private sendToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tree"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/ViewIndexer$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer$3;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public static sendToServerUnityInstance(Ljava/lang/String;)V
    .locals 1
    .param p0, "tree"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServerUnity(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public schedule()V
    .locals 6

    .prologue
    .line 83
    iget-object v4, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 84
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "activityName":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "appId":Ljava/lang/String;
    new-instance v3, Lcom/facebook/appevents/codeless/ViewIndexer$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer$1;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Landroid/app/Activity;Ljava/lang/String;)V

    .line 142
    .local v3, "indexingTask":Ljava/util/TimerTask;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/appevents/codeless/ViewIndexer$2;

    invoke-direct {v5, p0, v3}, Lcom/facebook/appevents/codeless/ViewIndexer$2;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendToServerUnity(Ljava/lang/String;)V
    .locals 3
    .param p1, "tree"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, ""

    .line 190
    .local v1, "activityName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_0
    sget-object v2, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v2, p1, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public unschedule()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    const-string v3, "Error unscheduling indexing job"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
