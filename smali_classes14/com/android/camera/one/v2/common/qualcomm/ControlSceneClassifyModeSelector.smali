.class public Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;
.super Ljava/lang/Object;
.source "ControlSceneClassifyModeSelector.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mSceneClassifyModeSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneDetectionSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p3, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "sceneDetectionSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .local p2, "sceneClassifyModeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    .line 16
    iput-object p2, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mSceneClassifyModeSetting:Lcom/google/common/base/Supplier;

    .line 17
    iput-object p3, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 18
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mSceneClassifyModeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->mSceneDetectionSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/qualcomm/ControlSceneClassifyModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
