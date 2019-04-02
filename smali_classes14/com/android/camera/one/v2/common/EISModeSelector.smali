.class public Lcom/android/camera/one/v2/common/EISModeSelector;
.super Ljava/lang/Object;
.source "EISModeSelector.java"

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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 39
    iput-object p3, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCaptureSize:Lcom/android/camera/util/Size;

    .line 40
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    sget-object v1, Lcom/android/camera/one/v2/common/EISModeSelector$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v2, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v2, p0, Lcom/android/camera/one/v2/common/EISModeSelector;->mCaptureSize:Lcom/android/camera/util/Size;

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isEISSupported(Lcom/android/camera/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/EISModeSelector;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
