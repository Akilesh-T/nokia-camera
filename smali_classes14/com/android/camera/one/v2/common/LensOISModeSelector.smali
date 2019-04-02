.class public Lcom/android/camera/one/v2/common/LensOISModeSelector;
.super Ljava/lang/Object;
.source "LensOISModeSelector.java"

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
.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureSize:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "captureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 39
    iput-object p2, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 40
    iput-object p3, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCaptureSize:Lcom/android/camera/util/Size;

    .line 41
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    iget-object v2, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isOISSupported()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/common/LensOISModeSelector$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v3, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual {v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 51
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/one/v2/common/LensOISModeSelector;->mCaptureSize:Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isEISSupported(Lcom/android/camera/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/LensOISModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
