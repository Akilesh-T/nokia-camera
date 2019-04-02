.class public Lcom/android/camera/one/v2/common/FlashMode;
.super Ljava/lang/Object;
.source "FlashMode.java"

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

.field private final mCameraId:I

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCurrentCameraId:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlash:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdrSceneSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualExpTimeSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;"
        }
    .end annotation
.end field

.field private final mManualISOSetting:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;ILcom/android/camera/async/Observable;)V
    .locals 0
    .param p5, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p6, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p7, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "I",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "flash":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    .local p2, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .local p3, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p4, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    .local p8, "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/common/FlashMode;->mFlash:Lcom/google/common/base/Supplier;

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/common/FlashMode;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 35
    iput-object p3, p0, Lcom/android/camera/one/v2/common/FlashMode;->mManualISOSetting:Lcom/google/common/base/Supplier;

    .line 36
    iput-object p4, p0, Lcom/android/camera/one/v2/common/FlashMode;->mHdrSceneSetting:Lcom/android/camera/async/Observable;

    .line 37
    iput-object p5, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 38
    iput-object p6, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 39
    iput p7, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCameraId:I

    .line 40
    iput-object p8, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCurrentCameraId:Lcom/android/camera/async/Observable;

    .line 41
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mHdrSceneSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    sget-object v2, Lcom/android/camera/one/v2/common/FlashMode$1;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$Flash:[I

    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mFlash:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCameraId:I

    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCurrentCameraId:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_2

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashMode;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isTorchAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/FlashMode;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
