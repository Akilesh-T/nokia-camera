.class public Lcom/android/ex/camera2/portability/extension/field/MTKconstants;
.super Ljava/lang/Object;
.source "MTKconstants.java"


# static fields
.field public static final BURST_SHOT_NUM:I = 0x28

.field public static final CAMERA_MODE_MTK_PRV:I = 0x1

.field public static final CAMERA_MODE_MTK_VDO:I = 0x2

.field public static final CAMERA_MODE_MTK_VT:I = 0x3

.field public static final CAMERA_MODE_NORMAL:I = 0x0

.field public static final CAPTURE_MODE_BURST:Ljava/lang/String; = "continuousshot"

.field public static final CAPTURE_MODE_CONTINUOUS_SHOT_MODE:Ljava/lang/String; = "continuousshot"

.field public static final CAPTURE_MODE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAPTURE_MODE_PANORAM:Ljava/lang/String; = "autorama"

.field public static final CENTER_WEIGHTED:Ljava/lang/String; = "center-weighted"

.field public static final FEATURE_OFF:Ljava/lang/String; = "off"

.field public static final FEATURE_ON:Ljava/lang/String; = "on"

.field public static final FOCUS_MODE_MANUAL_POSITION:Ljava/lang/String; = "manual"

.field public static final FRAME_AVERGAE:Ljava/lang/String; = "frame-average"

.field public static final HSVR_SIZE_FPS:Ljava/lang/String; = "hsvr-size-fps"

.field public static final KEY_BURST_SHOT_NUM:Ljava/lang/String; = "burst-num"

.field public static final KEY_CAMERA_MODE:Ljava/lang/String; = "mtk-cam-mode"

.field public static final KEY_CAPTURE_MODE:Ljava/lang/String; = "cap-mode"

.field public static final KEY_CAPTURE_MODE_CONTINUOUS_PICTURE_MODE:Ljava/lang/String; = "continuous-picture"

.field public static final KEY_CAPTURE_MODE_FACE_BEAUTY_MODE:Ljava/lang/String; = "face_beauty"

.field public static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field public static final KEY_MANUAL_FOCUS_POSITION:Ljava/lang/String; = "afeng-pos"

.field public static final KEY_MANUAL_FOCUS_TYPE:Ljava/lang/String; = "afeng-mode"

.field public static final KEY_MAX_FOCUS_SCALE:Ljava/lang/String; = "afeng-max-focus-step"

.field public static final KEY_MIN_FOCUS_SCALE:Ljava/lang/String; = "afeng-min-focus-step"

.field public static final KEY_MTK_AUTO_EXPOSURE:Ljava/lang/String; = "auto-exposure"

.field public static final KEY_MTK_SUPPORTED_MANUAL_FOCUS_MODES:Ljava/lang/String; = "manual-focus-modes"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field public static final KEY_VIDEO_HDR:Ljava/lang/String; = "video-hdr"

.field public static final KEY_ZSD_MODE:Ljava/lang/String; = "zsd-mode"

.field public static final MANUAL_FOCUS_DIOPTER_MODE:Ljava/lang/String; = "diopter-mode"

.field public static final MANUAL_FOCUS_SCALE_MODE:Ljava/lang/String; = "scale-mode"

.field public static final MANUAL_FOCUS_TYPE_DIOPTER:I = 0x3

.field public static final MANUAL_FOCUS_TYPE_SCALE:I = 0x2

.field public static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field public static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final ZSL_OFF:Ljava/lang/String; = "off"

.field public static final ZSL_ON:Ljava/lang/String; = "on"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManualFocusType(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)I
    .locals 1
    .param p0, "manualFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-virtual {v0, p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x2

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-virtual {v0, p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x3

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapFlipModeToString(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
    .locals 3
    .param p0, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mapHFRToString(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
    .locals 3
    .param p0, "hdr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_120:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfr_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mapStringToFlipmode(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 4
    .param p0, "flipmodeString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static mapStringToHFR(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 3
    .param p0, "hfrString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HFR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method
