.class public Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/AccountAgent;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mContext:Landroid/content/Context;

.field private mDismissLoadingDialogWhenPaused:Z

.field private mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

.field private mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOrientation:I

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]WeiboAgent"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 62
    iput-object p2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 63
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    const-string v1, "1758031757"

    const-string v2, "https://api.weibo.com/oauth2/default.html"

    const-string v3, "email"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 64
    invoke-static {p1}, Lcom/android/camera/livebroadcast/weibo/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mDismissLoadingDialogWhenPaused:Z

    .line 66
    new-instance v0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/android/camera/async/Observable;
    .param p4, "x4"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLiveEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/weibo/WeiboStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/weibo/WeiboStatus;)Lcom/android/camera/livebroadcast/weibo/WeiboStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    return-object p1
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/android/camera/async/Observable;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLive(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mDismissLoadingDialogWhenPaused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/android/camera/async/Observable;
    .param p4, "x4"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->queryUserInfo(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "x3"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->onWeiboExceptionHandle(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    return-void
.end method

.method private createLive(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Ljava/lang/String;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "eventName"    # Ljava/lang/String;
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 219
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-nez v1, :cond_0

    .line 220
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {p2, v1, v2, v3, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f0800be

    .line 229
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-interface {p2, v1, v2, v3, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$5;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/String;I)V

    .line 377
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private createLiveEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p5, "eventName"    # Ljava/lang/String;
    .param p6, "imgURL"    # Ljava/lang/String;
    .param p7, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/16 v4, 0x500

    const/16 v3, 0x2d0

    .line 457
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLiveEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    invoke-interface {p3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "createLiveEvent after streaming close, abort."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$8;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 550
    :goto_0
    return-void

    .line 470
    :cond_0
    new-instance v7, Lcom/weibo/live/WeiboLiveCreate;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const-string v1, "1758031757"

    invoke-direct {v7, v0, v1, p4}, Lcom/weibo/live/WeiboLiveCreate;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 471
    .local v7, "weiboLiveCreate":Lcom/weibo/live/WeiboLiveCreate;
    invoke-virtual {v7, p1}, Lcom/weibo/live/WeiboLiveCreate;->setAc(Landroid/app/Activity;)V

    .line 472
    invoke-virtual {v7, p5}, Lcom/weibo/live/WeiboLiveCreate;->setTitle(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v7, p5}, Lcom/weibo/live/WeiboLiveCreate;->setSummary(Ljava/lang/String;)V

    .line 476
    if-eqz p7, :cond_1

    const/16 v0, 0xb4

    if-ne p7, v0, :cond_3

    .line 477
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/weibo/live/WeiboLiveCreate;->setWidth(Ljava/lang/String;)V

    .line 478
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/weibo/live/WeiboLiveCreate;->setHeight(Ljava/lang/String;)V

    .line 484
    :goto_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "default_scope"

    const-string v2, "pref_live_broadcast_account_weibo_privacy"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, "privacyStatus":Ljava/lang/String;
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "privacyStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v7, v6}, Lcom/weibo/live/WeiboLiveCreate;->setPublished(Ljava/lang/String;)V

    .line 488
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    invoke-virtual {v7, p6}, Lcom/weibo/live/WeiboLiveCreate;->setImage(Ljava/lang/String;)V

    .line 491
    :cond_2
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$9;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    invoke-virtual {v7, v0}, Lcom/weibo/live/WeiboLiveCreate;->createLive(Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0

    .line 480
    .end local v6    # "privacyStatus":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/weibo/live/WeiboLiveCreate;->setWidth(Ljava/lang/String;)V

    .line 481
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/weibo/live/WeiboLiveCreate;->setHeight(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onWeiboExceptionHandle(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 9
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "callback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    const/4 v8, 0x0

    .line 677
    invoke-virtual {p3}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->parse(Ljava/lang/String;)Lcom/android/camera/livebroadcast/weibo/ErrorInfo;

    move-result-object v0

    .line 678
    .local v0, "errorInfo":Lcom/android/camera/livebroadcast/weibo/ErrorInfo;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error_code:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/weibo/WeiboError;->getErrorMsg(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;

    move-result-object v1

    .line 679
    .local v1, "errorMsg":Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->getErrorCode()Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne v2, v3, :cond_4

    .line 680
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 681
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p1, v2, v3, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v2, v0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 683
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, v0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error:Ljava/lang/String;

    invoke-interface {p2, p1, v2, v3, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v2, v0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error_code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 685
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f0800c8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/camera/livebroadcast/weibo/ErrorInfo;->error_code:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 686
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-interface {p2, p1, v2, v3, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 688
    :cond_3
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f080113

    .line 689
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-interface {p2, p1, v2, v3, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 691
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/weibo/WeiboError$ErrorMsg;->getErrorCode()Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne v2, v3, :cond_0

    .line 692
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->PERMISSION_FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {p2, p1, v2, v3, v8}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queryUserInfo(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p5, "eventName"    # Ljava/lang/String;
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
            "Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUserInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    sget-object v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "queryUserInfo after streaming close, abort."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$6;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$6;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 454
    :goto_0
    return-void

    .line 399
    :cond_0
    :try_start_0
    new-instance v11, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const-string v3, "1758031757"

    move-object/from16 v0, p4

    invoke-direct {v11, v2, v3, v0}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 400
    .local v11, "usersAPI":Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;
    invoke-virtual/range {p4 .. p4}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 401
    .local v12, "uid":J
    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;

    move-object v3, p0

    move-object/from16 v4, p3

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$7;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v13, v2}, Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;->show(JLcom/sina/weibo/sdk/net/RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v11    # "usersAPI":Lcom/android/camera/livebroadcast/weibo/openapi/UsersAPI;
    .end local v12    # "uid":J
    :catch_0
    move-exception v10

    .line 451
    .local v10, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUserInfo Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    const-string v8, ""

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->createLiveEvent(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callbackCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "params"    # Ljava/lang/Object;

    .prologue
    .line 706
    sget-object v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->stopUpdate()V

    .line 709
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .line 712
    :cond_0
    instance-of v2, p3, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 713
    check-cast v0, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    .line 714
    .local v0, "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$11;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;)V

    .line 722
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 728
    .end local v0    # "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 725
    .restart local v0    # "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopUpdate()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->stopUpdate()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .line 735
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$4;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestAccountPicker"    # I
    .param p3, "loginCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 74
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 75
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;

    invoke-direct {v1, p0, p3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeWeb(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 101
    return-void
.end method

.method public createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
    .locals 6
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
    .line 147
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 149
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parameter error when createLiveBroadcast"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 154
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f080113

    .line 156
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 154
    invoke-interface {p2, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 160
    :cond_2
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$3;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/async/Observable;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)V

    .line 192
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAgentTitleResId()I
    .locals 1

    .prologue
    .line 776
    const v0, 0x7f080319

    return v0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 699
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    if-nez v0, :cond_1

    .line 700
    :cond_0
    const/4 v0, 0x0

    .line 702
    .end local p1    # "params":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local p1    # "params":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    .end local p1    # "params":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;->getRTMPPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 129
    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v1, 0x7f0800bb

    new-instance v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v1, 0x7f0800b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public logoutAccount(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "logoutAccount"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/AccessTokenKeeper;->clear(Landroid/content/Context;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 123
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 107
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 762
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->hide()V

    .line 745
    iput-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mEditDialog:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mDismissLoadingDialogWhenPaused:Z

    if-eqz v0, :cond_1

    .line 748
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The loading dialog is dismissed when paused."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mDismissLoadingDialogWhenPaused:Z

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    if-eqz v0, :cond_2

    .line 753
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The status update can\'t be used when paused, Therefore, we force to stop it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboStatus;->stopUpdate()V

    .line 755
    iput-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mWeiboStatus:Lcom/android/camera/livebroadcast/weibo/WeiboStatus;

    .line 757
    :cond_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 766
    iput p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mOrientation:I

    .line 767
    return-void
.end method

.method public startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V
    .locals 3
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
    .line 554
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 556
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter error when startLiveBroadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-interface {p2, v0, v1, p0, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->startUpdate(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "params"    # Ljava/lang/Object;
    .param p4, "delete"    # Z
    .param p5, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f080113

    .line 568
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 570
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parameter error when stopLiveBroadcast"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->stopUpdate()V

    .line 576
    invoke-static {p1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 577
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    .line 579
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    :goto_0
    return-void

    .line 583
    :cond_2
    instance-of v1, p3, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    if-nez v1, :cond_3

    .line 584
    sget-object v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 585
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mContext:Landroid/content/Context;

    .line 587
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-interface {p2, v1, v2, v3, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v4, p3

    .line 591
    check-cast v4, Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;

    .line 592
    .local v4, "liveData":Lcom/android/camera/livebroadcast/weibo/WeiboLiveData;
    new-instance v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Landroid/app/Activity;ZLcom/android/camera/livebroadcast/weibo/WeiboLiveData;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    .line 667
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 668
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 670
    :cond_4
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
