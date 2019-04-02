.class public Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;
.super Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;
.source "MTKSceneDetectorExtension.java"


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
    .locals 7
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p2, "POSTFIX"    # Ljava/lang/String;
    .param p3, "mStaticMeta"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;-><init>()V

    .line 35
    new-instance v4, Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTK_ASD_EXT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 36
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_0

    const/4 v2, 0x1

    .line 37
    .local v2, "isFront":Z
    :goto_0
    new-instance v4, Lcom/android/camera/async/ConcurrentState;

    sget-object v5, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-direct {v4, v5}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "ans_th":[I
    const/4 v1, 0x0

    .line 40
    .local v1, "asdn_th":[I
    if-eqz p3, :cond_4

    .line 43
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 44
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "set from metadata"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    aget v4, v1, v3

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 46
    aget v3, v0, v3

    iput v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    .line 55
    :goto_1
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DENOISE_THRESHOLD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->DENOISE_THRESHOLD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LOWLIGHT_THRESHOLD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mLastFrameNumber:J

    .line 57
    return-void

    .end local v0    # "ans_th":[I
    .end local v1    # "asdn_th":[I
    .end local v2    # "isFront":Z
    :cond_0
    move v2, v3

    .line 36
    goto :goto_0

    .line 48
    .restart local v0    # "ans_th":[I
    .restart local v1    # "asdn_th":[I
    .restart local v2    # "isFront":Z
    :cond_1
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_2

    const-string v4, "camera.asdn.th.main"

    :goto_2
    const-string v5, "400"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 49
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_3

    const-string v4, "camera.ans.th.main"

    :goto_3
    const-string v5, "800"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto :goto_1

    .line 48
    :cond_2
    const-string v4, "camera.asdn.th.front"

    goto :goto_2

    .line 49
    :cond_3
    const-string v4, "camera.ans.th.front"

    goto :goto_3

    .line 52
    :cond_4
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_5

    const-string v4, "camera.asdn.th.main"

    :goto_4
    const-string v5, "400"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->DENOISE_THRESHOLD:I

    .line 53
    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v4, :cond_6

    const-string v4, "camera.ans.th.main"

    :goto_5
    const-string v5, "800"

    invoke-static {v4, v5}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->LOWLIGHT_THRESHOLD:I

    goto/16 :goto_1

    .line 52
    :cond_5
    const-string v4, "camera.asdn.th.front"

    goto :goto_4

    .line 53
    :cond_6
    const-string v4, "camera.ans.th.front"

    goto :goto_5
.end method


# virtual methods
.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

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
    .line 61
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mLastFrameNumber:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 62
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 67
    .local v0, "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    invoke-static {p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    .local v2, "isoState":Ljava/lang/Integer;
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    .line 83
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    if-ne p2, v3, :cond_3

    .line 84
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 85
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_DR_CHECKER_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Lcom/android/camera/util/MorphoUtil;->isNeedHDR([I)Z

    .line 120
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v3, v0}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mDetectedSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 122
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 125
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKSceneDetectorExtension;->mLastFrameNumber:J

    .line 127
    .end local v0    # "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .end local v2    # "isoState":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 86
    .restart local v0    # "detectScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .restart local v2    # "isoState":Ljava/lang/Integer;
    :cond_3
    sget-object v3, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    if-ne p2, v3, :cond_0

    .line 93
    :try_start_0
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_DR_CHECKER_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Lcom/android/camera/util/MorphoUtil;->isNeedHDR([I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_0

    .line 96
    :cond_4
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 104
    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    goto :goto_0
.end method
