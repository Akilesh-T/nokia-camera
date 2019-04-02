.class public Lcom/android/camera/livebroadcast/streaming/MediaStreamer;
.super Ljava/lang/Object;
.source "MediaStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mIsClosed:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStreaming:Z

.field private final mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRtmpPath:Ljava/lang/String;

.field private final mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]MediaStreamer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;IILcom/android/camera/OZO/OZOSettings;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rtmpPath"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/media/CamcorderProfile;
    .param p5, "orientation"    # I
    .param p6, "captureRate"    # I
    .param p7, "ozoSettings"    # Lcom/android/camera/OZO/OZOSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lcom/android/camera/OZO/OZOSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    .line 35
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRtmpPath:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsClosed:Lcom/android/camera/async/Observable;

    .line 41
    iput p5, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mOrientation:I

    .line 44
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;-><init>(Landroid/app/Activity;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;IILcom/android/camera/OZO/OZOSettings;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .line 45
    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRtmpPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRtmpPath:Ljava/lang/String;

    return-object v0
.end method

.method public isReleased()Z
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release : mIsStreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->stop()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->release()V

    .line 84
    :cond_1
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnStreamingResultListener(Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;)V
    .locals 2
    .param p1, "onStreamingResultListener"    # Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->setOnStreamingResultListener(Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;)V

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRtmpPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRtmpPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mRtmpPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->start(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start fail."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop : mIsStreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mIsStreaming:Z

    .line 70
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->mStreamerConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->stop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stop fail."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method
