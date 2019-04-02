.class public Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
.super Ljava/lang/Object;
.source "YouTubeAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/AccountAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$YouTubeConst;,
        Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;,
        Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;,
        Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$CreateAndStartLiveEventTask;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOrientation:I

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 54
    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 56
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/camera/livebroadcast/youtube/YouTubeUtils;->SCOPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 58
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    new-instance v1, Lcom/google/api/client/util/ExponentialBackOff;

    invoke-direct {v1}, Lcom/google/api/client/util/ExponentialBackOff;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setBackOff(Lcom/google/api/client/util/BackOff;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 59
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->loadAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 60
    new-instance v0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object p1
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/google/api/services/youtube/YouTube;
    .param p3, "x3"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->startUpdate(Landroid/app/Activity;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/settings/SettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method private loadAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_account_youtube"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startUpdate(Landroid/app/Activity;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p3, "callbackCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    .line 651
    sget-object v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUpdate() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->stopUpdate()V

    .line 655
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .line 658
    :cond_0
    instance-of v2, p4, Lcom/android/camera/livebroadcast/youtube/EventData;

    if-eqz v2, :cond_1

    move-object v0, p4

    .line 659
    check-cast v0, Lcom/android/camera/livebroadcast/youtube/EventData;

    .line 660
    .local v0, "eventData":Lcom/android/camera/livebroadcast/youtube/EventData;
    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$5;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/google/api/services/youtube/YouTube;Lcom/android/camera/livebroadcast/youtube/EventData;)V

    .line 669
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 675
    .end local v0    # "eventData":Lcom/android/camera/livebroadcast/youtube/EventData;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 672
    .restart local v0    # "eventData":Lcom/android/camera/livebroadcast/youtube/EventData;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopUpdate()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->stopUpdate()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .line 682
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$4;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestAccountPicker"    # I
    .param p3, "loginCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method

.method public createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
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
    .line 164
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 166
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parameter error when createLiveBroadcast"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 171
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f080113

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 171
    invoke-interface {p2, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 177
    :cond_2
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$3;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Lcom/android/camera/async/Observable;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    .line 213
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 68
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void
.end method

.method public getAgentTitleResId()I
    .locals 1

    .prologue
    .line 717
    const v0, 0x7f0803fc

    return v0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->loadAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 107
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 644
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/livebroadcast/youtube/EventData;

    if-nez v0, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 647
    .end local p1    # "params":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local p1    # "params":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/camera/livebroadcast/youtube/EventData;

    .end local p1    # "params":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/youtube/EventData;->getIngestionAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0802a3

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    move-object v1, p2

    .line 127
    check-cast v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    .line 128
    .local v1, "errorCode":Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne v1, v2, :cond_0

    .line 129
    const v2, 0x7f0802a4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v2, 0x7f0802a2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$1;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    :goto_0
    const v2, 0x7f0802a1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void

    .line 143
    :cond_0
    const v2, 0x7f0803fc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 144
    const v2, 0x7f0802a5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 145
    new-instance v2, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$2;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public logoutAccount(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 117
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "logoutAccount"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0, v3}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 119
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_account_youtube"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 82
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "authAccount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 91
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set SelectedAccountName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v3, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 93
    iget-object v3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v4, "default_scope"

    const-string v5, "pref_live_broadcast_account_youtube"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "accountName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when onActivityResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 703
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 691
    iput-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    if-eqz v0, :cond_1

    .line 694
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The status update can\'t be used when paused, Therefore, we force to stop it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->stopUpdate()V

    .line 696
    iput-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mYouTubeStatus:Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .line 698
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 707
    iput p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mOrientation:I

    .line 708
    return-void
.end method

.method public startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "params"    # Ljava/lang/Object;
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
    .line 371
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 373
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter error when startLiveBroadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;

    move-object v4, p3

    check-cast v4, Lcom/android/camera/livebroadcast/youtube/EventData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/youtube/EventData;Lcom/android/camera/async/Observable;)V

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 378
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$StartEventTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 379
    return-void
.end method

.method public stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "params"    # Ljava/lang/Object;
    .param p4, "delete"    # Z
    .param p5, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 503
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopLiveBroadcast("

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

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter error when stopLiveBroadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->stopUpdate()V

    .line 511
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 512
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f080113

    .line 514
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-interface {p2, v0, v1, v2, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    :goto_0
    return-void

    .line 518
    :cond_2
    instance-of v0, p3, Lcom/android/camera/livebroadcast/youtube/EventData;

    if-nez v0, :cond_3

    .line 519
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The params is wrong during stop event with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f0800c4

    .line 522
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-interface {p2, v0, v1, v2, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 526
    :cond_3
    new-instance v0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;

    move-object v4, p3

    check-cast v4, Lcom/android/camera/livebroadcast/youtube/EventData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/youtube/EventData;Z)V

    iget-object v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 527
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent$EndEventTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
