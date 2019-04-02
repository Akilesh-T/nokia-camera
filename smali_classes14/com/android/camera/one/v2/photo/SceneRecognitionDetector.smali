.class public Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;
.super Ljava/lang/Object;
.source "SceneRecognitionDetector.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<[F>;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mSCResult:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/scenerecognition/SceneClassifyLabel;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneRecognitionListener:Lcom/android/camera/one/OneCamera$SceneRecognitionListener;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V
    .locals 7
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SceneRecognitionDetector"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLog:Lcom/android/camera/debug/Logger;

    .line 32
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    .line 33
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    new-instance v1, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    new-array v2, v5, [I

    const/4 v3, -0x1

    aput v3, v2, v6

    new-array v3, v5, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    invoke-direct {v1, v5, v2, v3}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;-><init>(I[I[F)V

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSCResult:Lcom/android/camera/async/ConcurrentState;

    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    new-instance v1, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$1;-><init>(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)V

    .line 41
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSCResult:Lcom/android/camera/async/ConcurrentState;

    new-instance v1, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$2;-><init>(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)V

    .line 51
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 53
    new-instance v0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector$3;-><init>(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 60
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/one/OneCamera$SceneRecognitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSceneRecognitionListener:Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)Lcom/android/camera/one/OneCamera$SceneRecognitionListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSceneRecognitionListener:Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSCResult:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLog:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;
    .locals 1
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/Lifetime;)V

    return-object v0
.end method


# virtual methods
.method public getAWBGains()[F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getSCResult()Lcom/android/camera/scenerecognition/SceneClassifyLabel;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSCResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    return-object v0
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSceneRecognitionListener:Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .line 75
    return-void
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 11
    .param p1, "totalCaptureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x4

    .line 79
    if-eqz p1, :cond_3

    .line 80
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLastFrameNumber:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 82
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v6}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 83
    .local v4, "previous_result":[F
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->QC_AWBFrameControlRGain_STAT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v6}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 84
    .local v5, "result":[F
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    array-length v6, v4

    if-ne v6, v10, :cond_1

    array-length v6, v5

    if-ne v6, v10, :cond_1

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x0

    aget v7, v5, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v5, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    const/4 v6, 0x2

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v7, v5, v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 86
    :cond_0
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mAWBGainsResult:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v6, v5}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v4    # "previous_result":[F
    .end local v5    # "result":[F
    :cond_1
    :goto_0
    :try_start_1
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->QC_Scenceclassify_SCResultNum:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v6}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, "SCResultNum":I
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->QC_Scenceclassify_SCResultID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v6}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 95
    .local v0, "SCResultID":[I
    sget-object v6, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureResult;->QC_Scenceclassify_SCResultScore:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v6}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 96
    .local v2, "SCResultScore":[F
    if-lez v1, :cond_2

    .line 97
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mSCResult:Lcom/android/camera/async/ConcurrentState;

    new-instance v7, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    invoke-direct {v7, v1, v0, v2}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;-><init>(I[I[F)V

    invoke-virtual {v6, v7}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .end local v0    # "SCResultID":[I
    .end local v1    # "SCResultNum":I
    .end local v2    # "SCResultScore":[F
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLastFrameNumber:J

    .line 104
    :cond_3
    return-void

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read AWBGains error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 100
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read SCResult error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 17
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/SceneRecognitionDetector;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method
