.class public Lcom/android/camera/processing/ProcessingServiceManager;
.super Ljava/lang/Object;
.source "ProcessingServiceManager.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTaskConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/ProcessingServiceManager$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mHoldProcessing:Z

.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mServiceRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ProcessingSvcMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    .line 55
    iput-boolean v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mServiceRunning:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    .line 63
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mAppContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fa

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 68
    .local v0, "tinyThumbnailSize":I
    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;-><init>(Lcom/android/camera/processing/ProcessingTaskConsumer;I)V

    iput-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/camera/processing/ProcessingServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/camera/processing/ProcessingServiceManager$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/processing/ProcessingServiceManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static instance()Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/camera/processing/ProcessingServiceManager$Singleton;->access$100()Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v0

    return-object v0
.end method

.method private startService()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/camera/processing/ProcessingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mServiceRunning:Z

    .line 161
    return-void
.end method


# virtual methods
.method public declared-synchronized enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 3
    .param p1, "task"    # Lcom/android/camera/processing/ProcessingTask;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task added. Queue size now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mServiceRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->startService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageBackend()Lcom/android/camera/processing/imagebackend/ImageBackend;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    return-object v0
.end method

.method public declared-synchronized isRunningOrHasItems()Z
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mServiceRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized popNextSession()Lcom/android/camera/processing/ProcessingTask;
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popping a session. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-object v0

    .line 100
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popping null. On hold? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mServiceRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeProcessing()V
    .locals 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume processing. Queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z

    .line 140
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->startService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspendProcessing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->isRunningOrHasItems()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Suspend processing"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->mHoldProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return v0

    .line 128
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Not able to suspend processing."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
