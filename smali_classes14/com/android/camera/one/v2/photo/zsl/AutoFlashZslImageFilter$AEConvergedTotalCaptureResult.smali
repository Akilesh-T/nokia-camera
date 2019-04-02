.class Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;
.super Ljava/lang/Object;
.source "AutoFlashZslImageFilter.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEConvergedTotalCaptureResult"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .line 92
    return-void
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    if-ne p1, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 99
    .local v0, "aeState":Ljava/lang/Integer;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .end local v0    # "aeState":Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrameNumber()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getOriginalResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    return-object v0
.end method

.method public getPartialResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getPartialResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter$AEConvergedTotalCaptureResult;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getSequenceId()I

    move-result v0

    return v0
.end method
