.class public final Lcom/android/camera/one/v2/photo/State3ADetector;
.super Ljava/lang/Object;
.source "State3ADetector.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/State3AProvider;
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/State3AProvider;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mAEConverged:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAFConverged:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J

.field private final mLog:Lcom/android/camera/debug/Logger;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 3
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "3AStateFltr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mLog:Lcom/android/camera/debug/Logger;

    .line 66
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAFConverged:Lcom/android/camera/async/ConcurrentState;

    .line 67
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAEConverged:Lcom/android/camera/async/ConcurrentState;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mLastFrameNumber:J

    .line 69
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;
    .locals 1
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/one/v2/photo/State3ADetector;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/State3ADetector;-><init>(Lcom/android/camera/debug/Logger$Factory;)V

    return-object v0
.end method

.method private isAEAcceptable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z
    .locals 2
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 127
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 128
    .local v0, "aeState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAEConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 137
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isAFAcceptable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z
    .locals 2
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 111
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, "afState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAFConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLensStationary(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z
    .locals 2
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 97
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, "lensState":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAFConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isAERequired()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAEConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAFRequired()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAFConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isAFRequiredForcely()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 4
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/State3ADetector;->isAFAcceptable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z

    move-result v1

    .line 75
    .local v1, "afResult":Z
    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/State3ADetector;->isAFAcceptable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAFConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/State3ADetector;->isAEAcceptable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)Z

    move-result v0

    .line 80
    .local v0, "aeResult":Z
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mAEConverged:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 81
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/State3ADetector;->mLastFrameNumber:J

    .line 83
    .end local v0    # "aeResult":Z
    .end local v1    # "afResult":Z
    :cond_1
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/State3ADetector;->update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    return-void
.end method
