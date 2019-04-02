.class public Lcom/android/camera/one/v2/common/FlashBasedAEMode;
.super Ljava/lang/Object;
.source "FlashBasedAEMode.java"

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

.field private final mHdrSceneMode:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
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
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p5, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
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
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "flash":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    .local p2, "manualExpTimeSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    .local p3, "manualISOSetting":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    .local p4, "hdrSceneMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mFlash:Lcom/google/common/base/Supplier;

    .line 43
    iput-object p2, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    .line 44
    iput-object p3, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mManualISOSetting:Lcom/google/common/base/Supplier;

    .line 45
    iput-object p4, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mHdrSceneMode:Lcom/google/common/base/Supplier;

    .line 46
    iput-object p5, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 47
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mHdrSceneMode:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mManualExpTimeSetting:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 60
    :cond_2
    sget-object v2, Lcom/android/camera/one/v2/common/FlashBasedAEMode$1;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$Flash:[I

    iget-object v0, p0, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->mFlash:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/FlashBasedAEMode;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
