.class public Lcom/android/camera/stats/CaptureStats;
.super Ljava/lang/Object;
.source "CaptureStats.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isHdrPlus"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public onCaptureCanceled()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onCaptureFailed()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onCapturePersisted()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onMediumThumb()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onPostProcessImage()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onProcessingComplete()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onProcessingStarted()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onRawImage()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onTinyThumb()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
