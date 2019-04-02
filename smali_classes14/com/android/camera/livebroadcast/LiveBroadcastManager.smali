.class public Lcom/android/camera/livebroadcast/LiveBroadcastManager;
.super Ljava/lang/Object;
.source "LiveBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;,
        Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;,
        Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;,
        Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final PERSIST_LIVEBROADCAST_DEBUG:Ljava/lang/String; = "persist.livebroadcast.debug"

.field public static final PREFIX_:Ljava/lang/String; = "[LB]"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

.field private mSettingsManager:Lcom/android/camera/settings/SettingsManager;

.field private mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

.field private mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

.field private mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]Manager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 33
    const-string v0, "persist.livebroadcast.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/LiveBroadcastManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 4
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "The AccountType should not be null. Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$1;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$AccountType:[I

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/AccountConfig;->isEnabled(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;-><init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    .line 72
    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/AccountConfig;->isEnabled(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;-><init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/AccountConfig;->isEnabled(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    if-nez v1, :cond_3

    .line 84
    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;-><init>(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
    .locals 8
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "permissionCode"    # Lcom/android/camera/util/PermissionUtil$PermissionCode;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "requestAccountPicker"    # I
    .param p5, "loginCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v7

    .line 111
    .local v7, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v7, :cond_1

    .line 112
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne p1, v1, :cond_0

    .line 113
    new-instance v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;-><init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 115
    .local v0, "requestAccountPermission":Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->permissionCheck()V

    .line 121
    .end local v0    # "requestAccountPermission":Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-interface {v7, p3, p4, p5}, Lcom/android/camera/livebroadcast/AccountAgent;->chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)Z
    .locals 3
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p4, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 205
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 206
    new-instance v2, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p3, v2, p4}, Lcom/android/camera/livebroadcast/AccountAgent;->createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V

    .line 207
    const/4 v1, 0x1

    .line 209
    :cond_0
    return v1
.end method

.method public getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 155
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/AccountAgent;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentAccountAgent()Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 5

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_live_broadcast_choose_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "accountType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "type":Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0803fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 193
    :cond_0
    :goto_0
    return-object v1

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0803ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    goto :goto_0

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080400

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    goto :goto_0
.end method

.method public goToAuthorization(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "params"    # Ljava/lang/Object;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 170
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p2, p3}, Lcom/android/camera/livebroadcast/AccountAgent;->goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 173
    :cond_0
    return-void
.end method

.method public isAccountExisted()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    .line 126
    .local v0, "accountType":Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    .line 130
    .local v1, "isValid":Z
    goto :goto_0
.end method

.method public isCNVersion()Z
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqCNLiveBroadcast()Z

    move-result v0

    return v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .line 269
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    .line 270
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 270
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisable()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqWWLiveBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqCNLiveBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z
    .locals 3
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 177
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/AccountAgent;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 180
    :cond_0
    return v1
.end method

.method public isWWVersion()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqWWLiveBroadcast()Z

    move-result v0

    return v0
.end method

.method public logoutAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 163
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p2}, Lcom/android/camera/livebroadcast/AccountAgent;->logoutAccount(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getAccountAgent(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 148
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p2, p3, p4}, Lcom/android/camera/livebroadcast/AccountAgent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->onDestroy(Landroid/app/Activity;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->onDestroy(Landroid/app/Activity;)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->onDestroy(Landroid/app/Activity;)V

    .line 298
    :cond_2
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 274
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The streaming should not be enabled when paused, Therefore, we force to stop it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->stop()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mWeiboAgent:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->onPause(Landroid/app/Activity;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mFacebookAgent:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->onPause(Landroid/app/Activity;)V

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mYouTubeAgent:Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;->onPause(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/pip/opengl/GLRenderer;ILcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p4, "orientation"    # I
    .param p5, "accountAgent"    # Lcom/android/camera/livebroadcast/AccountAgent;
    .param p6, "params"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/camera/livebroadcast/streaming/Streaming;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Currently the streaming is started. Therefore, we skip it."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    if-eqz p5, :cond_1

    .line 227
    invoke-interface {p5, p6}, Lcom/android/camera/livebroadcast/AccountAgent;->getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "rtmpPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Can\'t get RTMP path succesfully. Therefore, we skip it."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLiveBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    instance-of v1, p5, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    invoke-virtual {v0, p1, p3, v1, p4}, Lcom/android/camera/livebroadcast/streaming/Streaming;->init(Landroid/app/Activity;Lcom/android/camera/pip/opengl/GLRenderer;ZI)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0, p2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->setCallback(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0, v6}, Lcom/android/camera/livebroadcast/streaming/Streaming;->start(Ljava/lang/String;)V

    .line 237
    new-instance v4, Lcom/android/camera/async/ConcurrentState;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/livebroadcast/AccountAgent;->startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V

    .line 238
    instance-of v0, p5, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    if-eqz v0, :cond_4

    .line 239
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0800cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0803f4

    .line 241
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x1388

    .line 241
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 242
    :cond_4
    instance-of v0, p5, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    if-eqz v0, :cond_5

    .line 243
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0800cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v7, 0x7f080319

    .line 245
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x1388

    .line 245
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_0

    .line 246
    :cond_5
    instance-of v0, p5, Lcom/android/camera/livebroadcast/youtube/YouTubeAgent;

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0800cf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0803fc

    .line 249
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x1388

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_0
.end method

.method public stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "accountAgent"    # Lcom/android/camera/livebroadcast/AccountAgent;
    .param p4, "params"    # Ljava/lang/Object;
    .param p5, "delete"    # Z

    .prologue
    .line 255
    if-nez p3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/streaming/Streaming;->setCallback(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mStreaming:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->stop()V

    .line 260
    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/livebroadcast/AccountAgent;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V

    goto :goto_0
.end method

.method public updateAccount()Z
    .locals 7

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    .line 135
    .local v0, "accountType":Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v1

    .line 138
    .local v1, "isValid":Z
    if-nez v1, :cond_0

    .line 139
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "The current account is not valid. Therefore skip it!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    const-string v4, "pref_live_broadcast_choose_key"

    iget-object v5, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->mContext:Landroid/content/Context;

    const v6, 0x7f080309

    .line 141
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
