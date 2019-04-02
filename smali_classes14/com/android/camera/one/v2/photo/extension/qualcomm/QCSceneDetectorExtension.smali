.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;
.super Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
.source "QCSceneDetectorExtension.java"


# instance fields
.field private final DENOISE_THRESHOLD:I

.field private final LOWLIGHT_THRESHOLD:I

.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$Facing;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p2, "POSTFIX"    # Ljava/lang/String;
    .param p3, "mStaticMeta"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;-><init>()V

    .line 38
    new-instance v5, Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QC_ASD_EXT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 39
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v5, :cond_0

    const/4 v3, 0x1

    .line 40
    .local v3, "isFront":Z
    :goto_0
    new-instance v5, Lcom/android/camera/async/ConcurrentState;

    sget-object v6, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-direct {v5, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    .line 41
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getOpticalConfiguration()Lcom/android/camera/util/FihOpticalConfiguration;

    move-result-object v2

    .line 42
    .local v2, "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    if-eqz v2, :cond_2

    .line 43
    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v2}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_th_front()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/util/MorphoUtil;->parseThreshold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 45
    invoke-virtual {v2}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_front()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/util/MorphoUtil;->parseThreshold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    .line 65
    :goto_1
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DENOISE_THRESHOLD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LOWLIGHT_THRESHOLD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mLastFrameNumber:J

    .line 67
    return-void

    .end local v2    # "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    .end local v3    # "isFront":Z
    :cond_0
    move v3, v4

    .line 39
    goto :goto_0

    .line 47
    .restart local v2    # "foc":Lcom/android/camera/util/FihOpticalConfiguration;
    .restart local v3    # "isFront":Z
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_asdn_th_main()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/util/MorphoUtil;->parseThreshold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 48
    invoke-virtual {v2}, Lcom/android/camera/util/FihOpticalConfiguration;->getCamera_ans_th_main()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/util/MorphoUtil;->parseThreshold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto :goto_1

    .line 50
    :cond_2
    if-eqz p3, :cond_6

    .line 51
    sget-object v5, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ANS_TH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 52
    .local v0, "ans_th":[I
    sget-object v5, Lcom/android/camera/one/v2/photo/extension/fih/FIHCameraCharacteristics;->ASDN_TH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 53
    .local v1, "asdn_th":[I
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 54
    iget-object v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "set from metadata"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    aget v5, v1, v4

    iput v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 56
    aget v4, v0, v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto :goto_1

    .line 58
    :cond_3
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v5, :cond_4

    const-string v5, "camera.asdn.th.main"

    :goto_2
    const-string v6, "400"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 59
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v5, :cond_5

    const-string v5, "camera.ans.th.main"

    :goto_3
    const-string v6, "800"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto/16 :goto_1

    .line 58
    :cond_4
    const-string v5, "camera.asdn.th.front"

    goto :goto_2

    .line 59
    :cond_5
    const-string v5, "camera.ans.th.front"

    goto :goto_3

    .line 62
    .end local v0    # "ans_th":[I
    .end local v1    # "asdn_th":[I
    :cond_6
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v5, :cond_7

    const-string v5, "camera.asdn.th.main"

    :goto_4
    const-string v6, "400"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 63
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v5, :cond_8

    const-string v5, "camera.ans.th.main"

    :goto_5
    const-string v6, "800"

    invoke-static {v5, v6}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto/16 :goto_1

    .line 62
    :cond_7
    const-string v5, "camera.asdn.th.front"

    goto :goto_4

    .line 63
    :cond_8
    const-string v5, "camera.ans.th.front"

    goto :goto_5
.end method


# virtual methods
.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;Lcom/android/camera/one/v2/photo/SceneDetector$HDR;Z)V
    .locals 8
    .param p1, "captureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "hdrMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
    .param p3, "isFlashRequired"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mLastFrameNumber:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 73
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 78
    .local v0, "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    invoke-static {p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    .local v2, "isoState":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    if-lt v3, v4, :cond_6

    .line 85
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 91
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 92
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 95
    :cond_1
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    if-ne p2, v3, :cond_7

    .line 97
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 98
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_DR_CHECKER_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Lcom/android/camera/util/MorphoUtil;->isNeedHDR([I)Z

    .line 122
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->DENOISE_THRESHOLD:I

    if-le v3, v4, :cond_9

    .line 125
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 132
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scene changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCSceneDetectorExtension;->mLastFrameNumber:J

    .line 138
    .end local v0    # "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .end local v2    # "isoState":Ljava/lang/Integer;
    :cond_5
    return-void

    .line 87
    .restart local v0    # "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .restart local v2    # "isoState":Ljava/lang/Integer;
    :cond_6
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_0

    .line 99
    :cond_7
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    if-ne p2, v3, :cond_2

    .line 106
    :try_start_0
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_DR_CHECKER_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Lcom/android/camera/util/MorphoUtil;->isNeedHDR([I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 107
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_1

    .line 109
    :cond_8
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 117
    goto :goto_1

    .line 114
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_1

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_2
.end method
