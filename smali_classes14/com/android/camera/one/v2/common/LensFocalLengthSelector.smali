.class public Lcom/android/camera/one/v2/common/LensFocalLengthSelector;
.super Ljava/lang/Object;
.source "LensFocalLengthSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mManualFocusSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "manualFocusSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/common/LensFocalLengthSelector;->mManualFocusSetting:Lcom/google/common/base/Supplier;

    .line 33
    iput-object p2, p0, Lcom/android/camera/one/v2/common/LensFocalLengthSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 34
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/common/LensFocalLengthSelector;->mManualFocusSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/common/LensFocalLengthSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinimumFocusDistance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/LensFocalLengthSelector;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
