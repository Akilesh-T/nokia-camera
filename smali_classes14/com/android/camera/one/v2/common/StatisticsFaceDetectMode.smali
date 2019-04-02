.class public Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;
.super Ljava/lang/Object;
.source "StatisticsFaceDetectMode.java"

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

.field private final mFaceDetectMode:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p2, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "faceDetectMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    .line 36
    iput-object p2, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 37
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-ne v0, v1, :cond_1

    .line 47
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->mFaceDetectMode:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    if-ne v0, v1, :cond_2

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
