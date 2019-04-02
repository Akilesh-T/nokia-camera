.class public Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;
.super Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
.source "QCCameraMetadataProcessor.java"


# static fields
.field private static final CAMERA_META_DATA_ASD:I = 0x1

.field private static final CAMERA_META_DATA_FD:I = 0x2

.field private static final CAMERA_META_DATA_FLASH:I = 0x4

.field private static final CAMERA_META_DATA_HDR:I = 0x3

.field private static final CAMERA_META_DATA_ISO:I = 0x5

.field private static final CAMERA_META_DATA_RTB:I = 0x6

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "QCCamMetaPro"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    .line 27
    return-void
.end method

.method private byteToInt([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 65
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 66
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private mapBokehStatus(I)Lcom/android/ex/camera2/portability/BokehStatus;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 123
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->NO_DEPTH_EFFECT:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->DEPTH_EFFECT_SUCCESS:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 113
    :pswitch_2
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_NEAR:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 115
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_FAR:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 117
    :pswitch_4
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->LOW_LIGHT:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 119
    :pswitch_5
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->SUBJECT_NOT_FOUND:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 121
    :pswitch_6
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOUCH_TO_FOCUS:Lcom/android/ex/camera2/portability/BokehStatus;

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private mapCaptureIntent(I)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 102
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 88
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 92
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 94
    :pswitch_4
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 96
    :pswitch_5
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 98
    :pswitch_6
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 100
    :pswitch_7
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public processCameraMetaData([B)V
    .locals 8
    .param p1, "data"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 31
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 32
    :cond_1
    new-array v1, v7, [I

    .line 33
    .local v1, "metadata":[I
    array-length v4, p1

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 35
    mul-int/lit8 v4, v0, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->byteToInt([BI)I

    move-result v4

    aput v4, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_2
    aget v4, v1, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mapCaptureIntent(I)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;->onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    aget v5, v1, v6

    if-ne v5, v2, :cond_3

    :goto_2
    invoke-interface {v4, v2}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;->onHDRRequiredChanged(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 48
    :pswitch_3
    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    aget v5, v1, v6

    if-ne v5, v2, :cond_4

    :goto_3
    invoke-interface {v4, v2}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;->onFlashRequiredChanged(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_3

    .line 51
    :pswitch_4
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    aget v3, v1, v6

    invoke-interface {v2, v3}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;->onIsoValueChanged(I)V

    goto :goto_0

    .line 54
    :pswitch_5
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/extension/QCCameraMetadataProcessor;->mapBokehStatus(I)Lcom/android/ex/camera2/portability/BokehStatus;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;->onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
