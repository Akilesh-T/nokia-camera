.class public Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;
.super Ljava/lang/Object;
.source "YouTubeStatus.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/status/AccountStatus;


# static fields
.field private static final MAX_ERROR_COUNT:I = 0x1e

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mErrorCount:I

.field private mLastLiveChatToken:Ljava/lang/String;

.field private final mLiveChatId:Ljava/lang/String;

.field private mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private mStop:Z

.field private final mStringId:Ljava/lang/String;

.field private final mYouTube:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p2, "youtube"    # Lcom/google/api/services/youtube/YouTube;
    .param p3, "streamId"    # Ljava/lang/String;
    .param p4, "liveChatId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStop:Z

    .line 34
    iput v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mErrorCount:I

    .line 42
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 43
    iput-object p2, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mYouTube:Lcom/google/api/services/youtube/YouTube;

    .line 44
    iput-object p3, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStringId:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mLiveChatId:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    invoke-direct {v0}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/google/api/services/youtube/YouTube;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mYouTube:Lcom/google/api/services/youtube/YouTube;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mLiveChatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/status/AccountStatus$Status;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStatus:Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mErrorCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mErrorCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mErrorCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->updateYouTubeStatus(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mLastLiveChatToken:Ljava/lang/String;

    return-object v0
.end method

.method private updateYouTubeStatus(Ljava/lang/String;J)V
    .locals 4
    .param p1, "nextToken"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 65
    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStop:Z

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mLastLiveChatToken:Ljava/lang/String;

    .line 68
    sget-boolean v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateYouTubeStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 70
    .local v0, "pollTimer":Ljava/util/Timer;
    new-instance v1, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus$1;-><init>(Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method


# virtual methods
.method public startUpdate()V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdated()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v2, v3}, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->updateYouTubeStatus(Ljava/lang/String;J)V

    .line 53
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startUpdated()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public stopUpdate()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->mStop:Z

    .line 61
    sget-object v0, Lcom/android/camera/livebroadcast/youtube/YouTubeStatus;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopUpdate()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    return-void
.end method
