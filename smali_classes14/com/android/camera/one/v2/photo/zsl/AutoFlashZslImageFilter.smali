.class public final Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
.super Ljava/lang/Object;
.source "AutoFlashZslImageFilter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Lcom/android/camera/async/Updatable;
.implements Lcom/android/camera/one/v2/photo/FlashDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
        ">;",
        "Lcom/android/camera/one/v2/photo/FlashDetector;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mDefaultFilter:Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

.field private mLastFrameNumber:J

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "defaultFilter"    # Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mDefaultFilter:Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    .line 72
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AutoFlashZslImgFltr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLastFrameNumber:J

    .line 75
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    .locals 3
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "requireAFConvergence"    # Z

    .prologue
    .line 143
    new-instance v0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    new-instance v1, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(ZZ)V

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z
    .locals 4
    .param p1, "totalCaptureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRequireAEConvergence =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    new-instance v0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;-><init>(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .end local p1    # "totalCaptureResultProxy":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    .local v0, "totalCaptureResultProxy":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    move-object p1, v0

    .line 156
    .end local v0    # "totalCaptureResultProxy":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    .restart local p1    # "totalCaptureResultProxy":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mDefaultFilter:Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->apply(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->apply(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v0

    return v0
.end method

.method public isFlashRequired()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 7
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 161
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLastFrameNumber:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 162
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    .local v0, "aeState":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .line 166
    .local v1, "previousValue":Z
    if-eq v1, v6, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    const-string v3, "Flash required"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 178
    .end local v1    # "previousValue":Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLastFrameNumber:J

    .line 181
    .end local v0    # "aeState":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 170
    .restart local v0    # "aeState":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mRequireAEConvergence:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .line 173
    .restart local v1    # "previousValue":Z
    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    const-string v3, "Flash not required"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 60
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    return-void
.end method
