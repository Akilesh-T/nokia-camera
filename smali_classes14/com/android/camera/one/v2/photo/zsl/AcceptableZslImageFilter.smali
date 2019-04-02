.class public Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;
.super Ljava/lang/Object;
.source "AcceptableZslImageFilter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final requireAEConvergence:Z

.field private final requireAFConvergence:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AcpZslImgFilter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "requireAFConvergence"    # Z
    .param p2, "requireAEConvergence"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->requireAFConvergence:Z

    .line 41
    iput-boolean p2, p0, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->requireAEConvergence:Z

    .line 42
    return-void
.end method

.method private isAEAcceptable(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z
    .locals 5
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    const/4 v1, 0x1

    .line 73
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 74
    .local v0, "aeState":Ljava/lang/Integer;
    sget-object v2, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    if-nez v0, :cond_0

    .line 84
    :goto_0
    :pswitch_0
    return v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 84
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isAFAcceptable(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z
    .locals 5
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    const/4 v1, 0x1

    .line 90
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "afState":Ljava/lang/Integer;
    sget-object v2, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    if-nez v0, :cond_0

    .line 103
    :goto_0
    :pswitch_0
    return v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLensStationary(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z
    .locals 5
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    const/4 v1, 0x1

    .line 58
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 59
    .local v0, "lensState":Ljava/lang/Integer;
    sget-object v2, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lensState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    if-nez v0, :cond_0

    .line 67
    :goto_0
    :pswitch_0
    return v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z
    .locals 2
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->isLensStationary(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 48
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->requireAFConvergence:Z

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->isAFAcceptable(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->requireAEConvergence:Z

    if-eqz v1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->isAEAcceptable(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 54
    :cond_1
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;->apply(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Z

    move-result v0

    return v0
.end method
