.class public Lcom/android/camera/processing/imagebackend/ImageBackend;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageConsumer;
.implements Lcom/android/camera/processing/imagebackend/ImageTaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/ImageBackend$SlowThreadFactory;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$AverageThreadFactory;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;,
        Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;
    }
.end annotation


# static fields
.field private static final AVERAGE_THREAD_PRIORITY:I = 0x1

.field private static final FAST_THREAD_PRIORITY:I = -0x4

.field private static final FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

.field private static final IMAGE_BACKEND_HARD_REF_POOL_SIZE:I = 0x2

.field protected static final NUM_THREADS_AVERAGE:I = 0x2

.field protected static final NUM_THREADS_FAST:I = 0x2

.field protected static final NUM_THREADS_SLOW:I = 0x2

.field private static final SLOW_THREAD_PRIORITY:I = 0x9

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImageSemaphoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mOutstandingImageClosed:I

.field private mOutstandingImageOpened:I

.field private mOutstandingImageRefs:I

.field protected final mProcessingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

.field private mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

.field protected final mShadowTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/processing/imagebackend/ImageShadowTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final mThreadPoolAverage:Ljava/util/concurrent/ExecutorService;

.field protected final mThreadPoolFast:Ljava/util/concurrent/ExecutorService;

.field protected final mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

.field private final mTinyThumbnailTargetSize:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ImageBackend"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 140
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/ProcessingTaskConsumer;I)V
    .locals 3
    .param p1, "processingTaskConsumer"    # Lcom/android/camera/processing/ProcessingTaskConsumer;
    .param p2, "tinyThumbnailSize"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    .line 146
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    .line 148
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    .line 151
    iput-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 155
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$FastThreadFactory;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$1;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolFast:Ljava/util/concurrent/ExecutorService;

    .line 156
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$AverageThreadFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$AverageThreadFactory;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$1;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolAverage:Ljava/util/concurrent/ExecutorService;

    .line 158
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$SlowThreadFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$SlowThreadFactory;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$1;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

    .line 159
    new-instance v0, Lcom/android/camera/processing/memory/ByteBufferDirectPool;

    invoke-direct {v0, v1}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 160
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    invoke-direct {v0}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    .line 163
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProcessingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

    .line 164
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p2, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mTinyThumbnailTargetSize:Lcom/android/camera/util/Size;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/processing/ProcessingTaskConsumer;I)V
    .locals 1
    .param p1, "fastService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "averageService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "slowService"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "imageProcessorProxyListener"    # Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    .param p6, "processingTaskConsumer"    # Lcom/android/camera/processing/ProcessingTaskConsumer;
    .param p7, "tinyThumbnailSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;",
            "Lcom/android/camera/processing/ProcessingTaskConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, "byteBufferDirectPool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    .line 146
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    .line 148
    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 182
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolFast:Ljava/util/concurrent/ExecutorService;

    .line 183
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolAverage:Ljava/util/concurrent/ExecutorService;

    .line 184
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

    .line 185
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 186
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    .line 189
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProcessingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

    .line 190
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p7, p7}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mTinyThumbnailTargetSize:Lcom/android/camera/util/Size;

    .line 191
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/processing/imagebackend/ImageBackend;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    return v0
.end method

.method private closeImageExecutorSafe(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 796
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/processing/imagebackend/ImageBackend$2;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageToProcess;)V

    .line 805
    .local v0, "closeTask":Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 807
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private numPropagatedImageReferences(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)I
    .locals 4
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 821
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    const/4 v0, 0x0

    .line 822
    .local v0, "countImageRefs":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 823
    .local v1, "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    iget-object v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    if-eq v3, p1, :cond_1

    .line 824
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ERROR:  Spawned tasks cannot reference new images!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_1
    iget-object v3, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    if-eqz v3, :cond_0

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    .end local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_2
    return v0
.end method


# virtual methods
.method public appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
    .locals 2
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 331
    .local v0, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)Z
    .locals 2
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->numPropagatedImageReferences(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)I

    move-result v0

    .line 309
    .local v0, "countImageRefs":I
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->incrementSemaphoreReferenceCount(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)V

    .line 316
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->incrementTaskDone(Ljava/util/Set;)V

    .line 318
    invoke-virtual {p0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->scheduleTasks(Ljava/util/Set;)V

    .line 319
    const/4 v1, 0x1

    return v1
.end method

.method protected decrementTaskDone(Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z
    .locals 4
    .param p1, "imageShadowTask"    # Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    monitor-enter v2

    .line 683
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->addCount(I)I

    move-result v0

    .line 684
    .local v0, "remainingTasks":I
    if-nez v0, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->signal()V

    .line 687
    const/4 v1, 0x1

    monitor-exit v2

    .line 689
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 691
    .end local v0    # "remainingTasks":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumberOfOutstandingCalls()I
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNumberOfReservedOpenImages()I
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    monitor-enter v1

    .line 222
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    iget v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    return-object v0
.end method

.method protected incrementSemaphoreReferenceCount(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)V
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    monitor-enter v2

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 774
    .local v0, "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 775
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Image Reference has already been released or has never been held."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    .end local v0    # "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 779
    .restart local v0    # "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->addCount(I)I

    .line 780
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref increse.  Total refs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", image = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 784
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    return-void
.end method

.method protected incrementTaskDone(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    monitor-enter v3

    .line 661
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 662
    .local v1, "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 663
    .local v0, "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    if-nez v0, :cond_0

    .line 664
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Session NOT previously registered. ImageShadowTask booking-keeping is incorrect."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    .end local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .end local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 668
    .restart local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .restart local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getProtocol()Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->addCount(I)I

    goto :goto_0

    .line 670
    .end local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .end local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    return-void
.end method

.method protected initializeTaskDone(Ljava/util/Set;Lcom/google/common/base/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    .local p2, "runnableWhenDone":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 624
    .local v3, "sessionSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/session/CaptureSession;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v4, "sessionTaskCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/camera/session/CaptureSession;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 628
    .local v6, "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    iget-object v8, v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v8, v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 630
    .local v1, "currentCount":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 631
    iget-object v8, v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 633
    :cond_0
    iget-object v8, v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 639
    .end local v1    # "currentCount":Ljava/lang/Integer;
    .end local v6    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    monitor-enter v8

    .line 640
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession;

    .line 641
    .local v0, "captureSession":Lcom/android/camera/session/CaptureSession;
    new-instance v2, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;

    invoke-direct {v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;-><init>()V

    .line 642
    .local v2, "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;->setCount(I)V

    .line 644
    new-instance v5, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    invoke-direct {v5, v2, v0, p2}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)V

    .line 646
    .local v5, "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    iget-object v7, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v7, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProcessingTaskConsumer:Lcom/android/camera/processing/ProcessingTaskConsumer;

    invoke-interface {v7, v5}, Lcom/android/camera/processing/ProcessingTaskConsumer;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V

    goto :goto_1

    .line 649
    .end local v0    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v2    # "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
    .end local v5    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    return-void
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZ)Z
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p3, "blockUntilImageRelease"    # Z
    .param p4, "closeOnImageRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 355
    .line 356
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 355
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z

    move-result v0

    return v0
.end method

.method public receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p3, "blockUntilImageRelease"    # Z
    .param p4, "closeOnImageRelease"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            "ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 382
    .local p5, "runnableWhenDone":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 383
    .local v2, "passTasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 384
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z

    move-result v0

    return v0
.end method

.method public receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z
    .locals 4
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p3, "blockUntilImageRelease"    # Z
    .param p4, "closeOnImageRelease"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 433
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    .local p5, "runnableWhenDone":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 435
    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 437
    :cond_1
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 440
    :cond_2
    const/4 v2, 0x0

    .line 474
    :goto_0
    return v2

    .line 443
    :cond_3
    if-nez p1, :cond_5

    .line 446
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 450
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ERROR: Initial call must reference valid Image!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->numPropagatedImageReferences(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)I

    move-result v0

    .line 458
    .local v0, "countImageRefs":I
    invoke-virtual {p0, p2, p5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->initializeTaskDone(Ljava/util/Set;Lcom/google/common/base/Optional;)V

    .line 463
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/camera/processing/imagebackend/ImageBackend;->setSemaphoreReferenceCount(Lcom/android/camera/processing/imagebackend/ImageToProcess;IZZ)Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    move-result-object v1

    .line 467
    .local v1, "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    invoke-virtual {p0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->scheduleTasks(Ljava/util/Set;)V

    .line 470
    iget-boolean v2, v1, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    if-eqz v2, :cond_6

    .line 471
    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->block()V

    .line 474
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    .locals 11
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "session"    # Lcom/android/camera/session/CaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
            ">;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 500
    .local p3, "processingFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    .local p5, "imageProcessorListener":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z

    move-result v0

    return v0
.end method

.method public receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z
    .locals 20
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "session"    # Lcom/android/camera/session/CaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
            ">;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 512
    .local p3, "processingFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    .local p5, "imageProcessorListener":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/processing/imagebackend/ImageProcessorListener;>;"
    .local p6, "fastThumbnailResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    .local p7, "postProcessResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    .local p8, "convertYUVResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;>;"
    .local p9, "convertJpegResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;>;"
    .local p10, "imageInfoResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/session/CaptureSession;->getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;

    move-result-object v7

    .line 514
    .local v7, "dummySession":Lcom/android/camera/session/CaptureSession;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 516
    .local v18, "tasksToExecute":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    if-nez p1, :cond_0

    .line 518
    const/4 v3, 0x1

    .line 600
    :goto_0
    return v3

    .line 523
    :cond_0
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_EARLY_FILMSTRIP_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 528
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;

    sget-object v8, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_YUV_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    if-eqz p8, :cond_8

    .line 540
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_2
    :goto_2
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 547
    if-eqz p9, :cond_9

    .line 548
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToJpeg;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToJpeg;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_3
    :goto_3
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    if-eqz p10, :cond_a

    .line 556
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v8, p10

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_4
    :goto_4
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 564
    new-instance v8, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;

    sget-object v12, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->FAST:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mTinyThumbnailTargetSize:Lcom/android/camera/util/Size;

    sget-object v15, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->SQUARE_ASPECT_CIRCULAR_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p0

    move-object v13, v7

    move-object/from16 v16, p6

    invoke-direct/range {v8 .. v16}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 569
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    sget-object v8, Lcom/android/camera/processing/imagebackend/ImageBackend;->FILMSTRIP_THUMBNAIL_TARGET_SIZE:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_5
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 574
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 581
    invoke-virtual/range {p5 .. p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 582
    .local v17, "finalImageProcessorListener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    new-instance v19, Lcom/android/camera/processing/imagebackend/ImageBackend$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend$1;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V

    .line 588
    .local v19, "unregisterRunnable":Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v13

    .line 589
    .local v13, "runnableOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->registerListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 594
    .end local v17    # "finalImageProcessorListener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .end local v19    # "unregisterRunnable":Ljava/lang/Runnable;
    :goto_5
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->BLOCK_UNTIL_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 595
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 596
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, v18

    .line 594
    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 598
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 533
    .end local v13    # "runnableOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    :cond_7
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    sget-object v4, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    .line 534
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    sget-object v4, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_FIRST_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;ZZ)V

    .line 533
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 542
    :cond_8
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Can\'t execute CONVERT_TO_YUV_DATA task, convertYUVResult is null."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 550
    :cond_9
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Can\'t execute CONVERT_TO_JPEG_DATA task, convertJpegResult is null."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 558
    :cond_a
    sget-object v3, Lcom/android/camera/processing/imagebackend/ImageBackend;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Can\'t execute CREATE_IMAGE_INFO task, imageInfoResult is null."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 591
    :cond_b
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v13

    .restart local v13    # "runnableOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Runnable;>;"
    goto :goto_5

    .line 600
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    monitor-enter v2

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    .line 256
    .local v0, "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "ERROR: Task implementation did NOT balance its release."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    .end local v0    # "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 264
    .restart local v0    # "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->addCount(I)I

    .line 265
    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref release.  Total refs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", image = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-boolean v1, v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->closeOnRelease:Z

    if-eqz v1, :cond_2

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->closeImageExecutorSafe(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref release close., image = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-boolean v1, v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->signal()V

    .line 289
    :cond_3
    :goto_0
    monitor-exit v2

    .line 290
    return-void

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected scheduleTasks(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/TaskImageContainer;>;"
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    monitor-enter v3

    .line 703
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 704
    .local v1, "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 705
    .local v0, "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    if-nez v0, :cond_0

    .line 706
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Scheduling a task with a unknown session."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    .end local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .end local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 711
    .restart local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .restart local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/camera/processing/imagebackend/ImageBackend$3;->$SwitchMap$com$android$camera$processing$imagebackend$TaskImageContainer$ProcessingPriority:[I

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->getProcessingPriority()Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 722
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v5, p0, p0, v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 713
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolFast:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v5, p0, p0, v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolAverage:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v5, p0, p0, v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 719
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;

    invoke-direct {v5, p0, p0, v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;-><init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 726
    .end local v0    # "shadowTask":Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .end local v1    # "task":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    return-void

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSemaphoreReferenceCount(Lcom/android/camera/processing/imagebackend/ImageToProcess;IZZ)Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "count"    # I
    .param p3, "blockUntilRelease"    # Z
    .param p4, "closeOnRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 737
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    monitor-enter v2

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 739
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "ERROR: Rewriting of Semaphore Lock.  Image references may not freed properly"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 745
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;

    invoke-direct {v0, p3, p4}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;-><init>(ZZ)V

    .line 747
    .local v0, "protocol":Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
    invoke-virtual {v0, p2}, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->setCount(I)V

    .line 749
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    .line 751
    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an opened image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageOpened:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageClosed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", image = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting an image reference count of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   Total refs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", image = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 756
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolSlow:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 610
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mThreadPoolFast:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 611
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageBackend Status BEGIN:\nShadow Image Map Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mShadowTaskMap:Ljava/util/Map;

    .line 397
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nImage Semaphore Map Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mImageSemaphoreMap:Ljava/util/Map;

    .line 398
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nOutstandingImageRefs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mOutstandingImageRefs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nProxy Listener Map Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 400
    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->getMapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nProxy Listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend;->mProxyListener:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 401
    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;->getNumRegisteredListeners()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nImageBackend Status END:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    return-object v0
.end method
