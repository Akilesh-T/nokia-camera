.class Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;
.super Ljava/lang/Object;
.source "AFScanHoldResetCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# static fields
.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAFScanCommand:Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;

.field private final mDelay:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

.field private final mMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewRunnable:Ljava/lang/Runnable;

.field private final mSlaveMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchExposure:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchExposureRunnable:Ljava/lang/Runnable;

.field private mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AFScanHoldResetCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;Lcom/android/camera/async/ResettingDelayedExecutor;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V
    .locals 1
    .param p1, "afScanCommand"    # Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;
    .param p2, "delayedExecutor"    # Lcom/android/camera/async/ResettingDelayedExecutor;
    .param p4, "previewRunnable"    # Ljava/lang/Runnable;
    .param p5, "touchExposureRunner"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;",
            "Lcom/android/camera/async/ResettingDelayedExecutor;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "afHoldSeconds":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    .local p6, "touchExposure":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    .local p7, "meteringParametersUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p8, "slaveMeteringParametersUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mAFScanCommand:Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;

    .line 59
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    .line 60
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelay:Lcom/android/camera/async/ConcurrentState;

    .line 61
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mPreviewRunnable:Ljava/lang/Runnable;

    .line 62
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposureRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    .line 64
    iput-object p7, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    .line 65
    iput-object p8, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mSlaveMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Lifetime;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/async/Lifetime;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;
    .param p1, "x1"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Updatable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/Updatable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mSlaveMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelay:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v2}, Lcom/android/camera/async/ResettingDelayedExecutor;->reset()Z

    .line 74
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelay:Lcom/android/camera/async/ConcurrentState;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 75
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 77
    iput-object v6, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    .line 79
    :cond_0
    new-instance v2, Lcom/android/camera/async/Lifetime;

    invoke-direct {v2}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mAFScanCommand:Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->run()V

    .line 82
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mAFScanCommand:Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposureRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    .line 84
    .local v1, "touchExposureCallback":Lcom/android/camera/async/SafeCloseable;
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 86
    .end local v1    # "touchExposureCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    new-instance v3, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand$1;-><init>(Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AFScanCommand timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 103
    iput-object v6, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    .line 104
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mSlaveMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mSlaveMeteringParametersUpdatable:Lcom/android/camera/async/Updatable;

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mPreviewRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 112
    iput-object v6, p0, Lcom/android/camera/one/v2/autofocus/AFScanHoldResetCommand;->mTouchFocusLifetime:Lcom/android/camera/async/Lifetime;

    .line 113
    throw v0
.end method
