.class public Lcom/android/camera/livebroadcast/facebook/FacebookStatus;
.super Ljava/lang/Object;
.source "FacebookStatus.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/status/AccountStatus;


# static fields
.field private static final SEARCH_LIMIT:I = 0x19

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAccessToken:Lcom/facebook/AccessToken;

.field private mHandler:Landroid/os/Handler;

.field private mLastAfterComments:Ljava/lang/String;

.field private mLastAfterReactions:Ljava/lang/String;

.field private final mLiveId:Ljava/lang/String;

.field private mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/facebook/LiveData;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "liveData"    # Lcom/android/camera/livebroadcast/facebook/LiveData;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStop:Z

    .line 41
    new-instance v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$1;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 50
    invoke-virtual {p3}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getLiveID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLiveId:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Lcom/android/camera/livebroadcast/facebook/LiveData;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mAccessToken:Lcom/facebook/AccessToken;

    .line 52
    new-instance v0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->updateFacebookStatus()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getUserThumbnailURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/json/JSONObject;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getLastCursors(Lorg/json/JSONObject;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterComments:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/facebook/FacebookStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterComments:Ljava/lang/String;

    return-object p1
.end method

.method private getCommentsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 103
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v3, "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterComments:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "after"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterComments:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLiveId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/comments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$3;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private getGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 176
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v3, "params":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v1, "live_views,total_views"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/facebook/GraphRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLiveId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$5;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$5;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private static getLastCursors(Lorg/json/JSONObject;ZZ)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "isAfterCursor"    # Z
    .param p2, "isNextExisted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 196
    if-nez p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object v3

    .line 198
    :cond_1
    const-string v4, "paging"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    const-string v4, "paging"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    .local v2, "paging":Lorg/json/JSONObject;
    const-string v4, "cursors"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    .local v0, "cursors":Lorg/json/JSONObject;
    const-string v4, "next"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, "isNextNull":Z
    if-eqz p2, :cond_2

    if-nez v1, :cond_0

    .line 204
    :cond_2
    const-string v4, "after"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 205
    const-string v3, "after"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 206
    :cond_3
    const-string v4, "before"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    .line 207
    const-string v3, "before"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getReactionsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 140
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v3, "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterReactions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "after"

    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLastAfterReactions:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    const-string v0, "summary"

    const-string v1, "total_count"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "limit"

    const-string v1, "50"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/facebook/GraphRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mLiveId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/reactions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$4;

    invoke-direct {v5, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$4;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private static getUserThumbnailURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://graph.facebook.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateFacebookStatus()V
    .locals 4

    .prologue
    .line 74
    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStop:Z

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v1, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "updateStatus() start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mAccessToken:Lcom/facebook/AccessToken;

    .line 78
    invoke-direct {p0, v3}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getCommentsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mAccessToken:Lcom/facebook/AccessToken;

    .line 79
    invoke-direct {p0, v3}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getReactionsGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mAccessToken:Lcom/facebook/AccessToken;

    .line 80
    invoke-direct {p0, v3}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->getGraphRequest(Lcom/facebook/AccessToken;)Lcom/facebook/GraphRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    .line 82
    .local v0, "requestBatch":Lcom/facebook/GraphRequestBatch;
    new-instance v1, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus$2;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookStatus;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 99
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public startUpdate()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdated()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->updateFacebookStatus()V

    .line 59
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdated()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public stopUpdate()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->mStop:Z

    .line 67
    sget-object v0, Lcom/android/camera/livebroadcast/facebook/FacebookStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    return-void
.end method
