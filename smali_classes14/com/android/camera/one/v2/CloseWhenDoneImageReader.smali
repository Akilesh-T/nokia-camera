.class public final Lcom/android/camera/one/v2/CloseWhenDoneImageReader;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;
.source "CloseWhenDoneImageReader.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mClosePending:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOpenImages:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mLock:Ljava/lang/Object;

    .line 67
    iput-boolean v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    .line 68
    iput v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/CloseWhenDoneImageReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->decrementImageCount()V

    return-void
.end method

.method private decrementImageCount()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    .line 74
    iget-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosePending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    .line 76
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->close()V

    .line 78
    :cond_0
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosePending:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    if-nez v1, :cond_0

    .line 101
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    .line 102
    .local v0, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eqz v0, :cond_0

    .line 103
    iget v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    .line 104
    new-instance v1, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;-><init>(Lcom/android/camera/one/v2/CloseWhenDoneImageReader;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    monitor-exit v2

    .line 108
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :goto_0
    return-object v1

    .line 107
    :cond_0
    monitor-exit v2

    .line 108
    const/4 v1, 0x0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosePending:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    if-nez v1, :cond_0

    .line 86
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    .line 87
    .local v0, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eqz v0, :cond_0

    .line 88
    iget v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    .line 89
    new-instance v1, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;-><init>(Lcom/android/camera/one/v2/CloseWhenDoneImageReader;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    monitor-exit v2

    .line 93
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :goto_0
    return-object v1

    .line 92
    :cond_0
    monitor-exit v2

    .line 93
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosePending:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosePending:Z

    .line 118
    iget v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mOpenImages:I

    if-nez v0, :cond_2

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->mClosed:Z

    .line 120
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->close()V

    .line 122
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
