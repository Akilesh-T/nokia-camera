.class public Lcom/android/camera/one/v2/photo/BokehResultDetector;
.super Ljava/lang/Object;
.source "BokehResultDetector.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/BokehResultProvider;
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBokehResult:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBokehResultDetectExtension:Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;

.field private mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

.field private mLastFrameNumber:J

.field private final mLog:Lcom/android/camera/debug/Logger;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V
    .locals 3
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehResultDetector"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLog:Lcom/android/camera/debug/Logger;

    .line 30
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    .line 31
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectorExtCreator;->create()Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultDetectExtension:Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;

    .line 32
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    new-instance v1, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/BokehResultDetector$1;-><init>(Lcom/android/camera/one/v2/photo/BokehResultDetector;)V

    .line 39
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 41
    new-instance v0, Lcom/android/camera/one/v2/photo/BokehResultDetector$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/BokehResultDetector$2;-><init>(Lcom/android/camera/one/v2/photo/BokehResultDetector;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/one/v2/photo/BokehResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/one/v2/photo/BokehResultDetector;Lcom/android/camera/one/v2/photo/BokehResultListener;)Lcom/android/camera/one/v2/photo/BokehResultListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;
    .param p1, "x1"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/photo/BokehResultDetector;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/BokehResultDetector;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLog:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/one/v2/photo/BokehResultDetector;
    .locals 1
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/one/v2/photo/BokehResultDetector;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/photo/BokehResultDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V

    return-object v0
.end method


# virtual methods
.method public getBokehResult()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setBokehListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultListener:Lcom/android/camera/one/v2/photo/BokehResultListener;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/one/v2/photo/BokehResultListener;->onBokehResultChange(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 8
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLastFrameNumber:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    .local v1, "previous_result":I
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResultDetectExtension:Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;

    invoke-virtual {v3, p1}, Lcom/android/camera/one/v2/photo/extension/BokehResultDetectExtension;->getBokehResult(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)I

    move-result v2

    .line 70
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mBokehResult:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bokeh result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "previous_result":I
    .end local v2    # "result":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLastFrameNumber:J

    .line 79
    :cond_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/BokehResultDetector;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read bokeh result  error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 16
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/BokehResultDetector;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method
