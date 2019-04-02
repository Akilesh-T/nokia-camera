.class public Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/AccountAgent;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mContext:Landroid/content/Context;

.field private mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

.field private mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOrientation:I

.field private mProfileTracker:Lcom/facebook/ProfileTracker;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mStreamActive:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]FBAgent"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 72
    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 73
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 74
    new-instance v0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 75
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/CallbackManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/facebook/AccessToken;Lcom/android/camera/async/Observable;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Lcom/android/camera/CameraActivity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/facebook/AccessToken;
    .param p4, "x4"    # Lcom/android/camera/async/Observable;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->showListDialog(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/facebook/AccessToken;Lcom/android/camera/async/Observable;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/android/camera/async/Observable;
    .param p4, "x4"    # Lcom/android/camera/livebroadcast/facebook/LiveData;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->createEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/facebook/FacebookStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/facebook/FacebookStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/facebook/ProfileTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mProfileTracker:Lcom/facebook/ProfileTracker;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/facebook/ProfileTracker;)Lcom/facebook/ProfileTracker;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Lcom/facebook/ProfileTracker;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mProfileTracker:Lcom/facebook/ProfileTracker;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Lcom/android/camera/CameraActivity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/android/camera/async/Observable;
    .param p4, "x4"    # Lcom/facebook/AccessToken;
    .param p5, "x5"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->listUserPages(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object p1
.end method

.method private createEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;I)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "liveData"    # Lcom/android/camera/livebroadcast/facebook/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "eventName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/livebroadcast/facebook/LiveData;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_account_facebook_privacy"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "privacyStatus":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privacyStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 503
    .local v5, "privacy":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "value"

    invoke-virtual {v5, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    invoke-virtual {p4}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "userId":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", privacy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object/from16 v4, p5

    move-object v6, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$8;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/camera/livebroadcast/facebook/LiveData;Ljava/lang/String;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    .line 585
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 590
    :goto_1
    return-void

    .line 504
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 505
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set privacy error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    .restart local v7    # "userId":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private listUserPages(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;I)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "accessToken"    # Lcom/facebook/AccessToken;
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraActivity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/AccessToken;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$6;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Lcom/android/camera/CameraActivity;Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V

    .line 417
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showListDialog(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/facebook/AccessToken;Lcom/android/camera/async/Observable;Ljava/util/List;I)V
    .locals 13
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraActivity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/facebook/AccessToken;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONArray;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    .local p5, "lstData":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONArray;>;"
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v2, "default_scope"

    const-string v3, "pref_live_broadcast_account_facebook_broadcast_to"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 429
    .local v10, "broadcastTo":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    invoke-static/range {p5 .. p5}, Lcom/android/camera/livebroadcast/facebook/PageData;->getList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 432
    .local v8, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/facebook/PageData;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 433
    .local v5, "accounts":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, "targetIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 436
    add-int/lit8 v2, v11, 0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/facebook/PageData;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/facebook/PageData;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 437
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/facebook/PageData;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/facebook/PageData;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    add-int/lit8 v12, v11, 0x1

    .line 435
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 442
    :cond_1
    move v6, v12

    .line 444
    .local v6, "finalTargetIndex":I
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object v4, p2

    move-object/from16 v7, p3

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$7;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/async/Observable;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;[Ljava/lang/String;ILcom/facebook/AccessToken;Ljava/util/List;I)V

    .line 489
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 494
    :goto_1
    return-void

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callbackCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "params"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUpdate() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->stopUpdate()V

    .line 700
    instance-of v1, p3, Lcom/android/camera/livebroadcast/facebook/LiveData;

    if-eqz v1, :cond_0

    move-object v5, p3

    .line 701
    check-cast v5, Lcom/android/camera/livebroadcast/facebook/LiveData;

    .line 702
    .local v5, "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$10;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/facebook/LiveData;)V

    .line 714
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 720
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    :cond_0
    :goto_0
    return-void

    .line 717
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopUpdate()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->stopUpdate()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .line 727
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 318
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$5;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestAccountPicker"    # I
    .param p3, "loginCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 82
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 165
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->logoutAccount(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraActivity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 222
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createLiveBroadcast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parameter error when createLiveBroadcast"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_1
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mContext:Landroid/content/Context;

    const v5, 0x7f080113

    .line 231
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 235
    :cond_2
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    .line 236
    .local v4, "accessToken":Lcom/facebook/AccessToken;
    if-nez v4, :cond_3

    .line 237
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Can\'t get access token during create event."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_3
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$4;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Lcom/android/camera/CameraActivity;Lcom/android/camera/async/Observable;Lcom/facebook/AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V

    .line 309
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAgentTitleResId()I
    .locals 1

    .prologue
    .line 762
    const v0, 0x7f0803f4

    return v0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 177
    .local v0, "profile":Lcom/facebook/Profile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 689
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/livebroadcast/facebook/LiveData;

    if-nez v0, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x0

    .line 692
    .end local p1    # "params":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local p1    # "params":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/camera/livebroadcast/facebook/LiveData;

    .end local p1    # "params":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getRTMPPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0803f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 204
    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 205
    const v1, 0x7f0800bb

    new-instance v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$3;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    const v1, 0x7f0800b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public logoutAccount(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 182
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "logoutAccount"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-static {v3}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 185
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me/permissions/"

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Ljava/lang/Runnable;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 197
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 748
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 736
    iput-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    if-eqz v0, :cond_1

    .line 739
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The status update can\'t be used when paused, Therefore, we force to stop it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->stopUpdate()V

    .line 741
    iput-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mFacebookStatus:Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .line 743
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 752
    iput p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mOrientation:I

    .line 753
    return-void
.end method

.method public startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "params"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLiveBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter error when startLiveBroadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-interface {p2, v0, v1, p0, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;)V

    .line 605
    return-void
.end method

.method public stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "params"    # Ljava/lang/Object;
    .param p4, "delete"    # Z
    .param p5, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 609
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopLiveBroadcast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 611
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 612
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parameter error when stopLiveBroadcast"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->stopUpdate()V

    .line 617
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 618
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mContext:Landroid/content/Context;

    const v5, 0x7f080113

    .line 620
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 685
    :goto_0
    return-void

    .line 624
    :cond_2
    instance-of v1, p3, Lcom/android/camera/livebroadcast/facebook/LiveData;

    if-nez v1, :cond_3

    .line 625
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The params is wrong during stop event with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 626
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mContext:Landroid/content/Context;

    const v5, 0x7f0800c4

    .line 628
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v4, p3

    .line 632
    check-cast v4, Lcom/android/camera/livebroadcast/facebook/LiveData;

    .line 634
    .local v4, "liveData":Lcom/android/camera/livebroadcast/facebook/LiveData;
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;Landroid/app/Activity;ZLcom/android/camera/livebroadcast/facebook/LiveData;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V

    .line 680
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 681
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
