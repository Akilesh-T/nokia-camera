.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidCameraProxyImpl"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private final mCameraId:I

.field private final mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

.field private final mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;


# direct methods
.method private constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V
    .locals 0
    .param p2, "cameraAgent"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p3, "cameraId"    # I
    .param p4, "camera"    # Landroid/hardware/Camera;
    .param p5, "characteristics"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .param p6, "capabilities"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;-><init>()V

    .line 1179
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 1180
    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCamera:Landroid/hardware/Camera;

    .line 1181
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraId:I

    .line 1182
    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 1183
    iput-object p6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 1184
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
    .param p2, "x1"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/hardware/Camera;
    .param p5, "x4"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .param p6, "x5"    # Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
    .param p7, "x6"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;

    .prologue
    .line 1165
    invoke-direct/range {p0 .. p6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    return-object v0
.end method


# virtual methods
.method public abortCapture()V
    .locals 3

    .prologue
    .line 1873
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$24;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$24;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    return-void

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1990
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z

    move-result v0

    return v0
.end method

.method public applySettingsAndStartBurst(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "burstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1582
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1583
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$13;

    invoke-direct {v3, p0, p3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$13;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1682
    :goto_0
    return-void

    .line 1593
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 1594
    .local v2, "needRestartPreviewForLongShot":Z
    :goto_1
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {p1, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1595
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setForCaptureOnlyOnce()V

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1598
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$14;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$14;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1649
    .local v0, "burstCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$15;

    invoke-direct {v1, p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$15;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    .line 1671
    .local v1, "burstRunnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_2

    .line 1672
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$16;

    invoke-direct {v3, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$16;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0

    .line 1593
    .end local v0    # "burstCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    .end local v1    # "burstRunnable":Ljava/lang/Runnable;
    .end local v2    # "needRestartPreviewForLongShot":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1680
    .restart local v0    # "burstCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    .restart local v1    # "burstRunnable":Ljava/lang/Runnable;
    .restart local v2    # "needRestartPreviewForLongShot":Z
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 4
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "panoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1709
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1710
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;

    invoke-direct {v3, p0, p3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$18;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1716
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$19;

    invoke-direct {v3, p0, p3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$19;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1845
    :goto_0
    return-void

    .line 1725
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 1726
    .local v0, "needRestartPreviewForLongShot":Z
    :goto_1
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {p1, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1727
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setForCaptureOnlyOnce()V

    .line 1728
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1730
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$20;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1812
    .local v1, "panoramaCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;

    invoke-direct {v2, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$21;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    .line 1834
    .local v2, "panoramaRunnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 1835
    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$22;

    invoke-direct {v3, p0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$22;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0

    .line 1725
    .end local v0    # "needRestartPreviewForLongShot":Z
    .end local v1    # "panoramaCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .end local v2    # "panoramaRunnable":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1843
    .restart local v0    # "needRestartPreviewForLongShot":Z
    .restart local v1    # "panoramaCallbackWrap":Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .restart local v2    # "panoramaRunnable":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V
    .locals 22
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "shutter"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .param p4, "raw"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p5, "postview"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p6, "jpeg"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p7, "bokeh"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    .param p8, "actionNotSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "jpegRotation"    # I
    .param p10, "isUsePostProcess"    # Z
    .param p11, "isoValue"    # I
    .param p12, "isCameraFrontFacing"    # Z
    .param p13, "isLongExposureTime"    # Z

    .prologue
    .line 1363
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applySettingsAndTakePicture : Intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setForCaptureOnlyOnce()V

    .line 1365
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1367
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v5, v6, :cond_0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1368
    invoke-virtual/range {v5 .. v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1578
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v5, v6, :cond_1

    sget-boolean v5, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1370
    invoke-virtual/range {v5 .. v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    goto :goto_0

    .line 1372
    :cond_1
    new-instance v12, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$9;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Landroid/os/Handler;)V

    .line 1393
    .local v12, "jpegCallback":Landroid/hardware/Camera$PictureCallback;
    new-instance v16, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$10;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;Landroid/os/Handler;)V

    .line 1431
    .local v16, "notSupportCallbackWrap":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
    new-instance v19, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$11;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Landroid/os/Handler;)V

    .line 1456
    .local v19, "bokehCallback":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v21

    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p12

    move/from16 v17, p11

    move/from16 v18, p13

    invoke-direct/range {v5 .. v19}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$12;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1574
    :catch_0
    move-exception v20

    .line 1575
    .local v20, "ex":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .prologue
    .line 1259
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1277
    .local v0, "afCallback":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 1290
    return-void
.end method

.method public dumpDeviceSettings()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1997
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 1998
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 1999
    .local v1, "flattened":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 2001
    .local v0, "dumpedSettings":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2007
    .end local v0    # "dumpedSettings":Ljava/lang/String;
    .end local v1    # "flattened":Ljava/lang/String;
    .end local v3    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    const-string v0, "[no parameters retrieved]"

    :cond_1
    return-object v0
.end method

.method public getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    const/4 v0, 0x0

    .line 1192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraId:I

    return v0
.end method

.method public getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 2

    .prologue
    .line 1207
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V

    return-object v0
.end method

.method public getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method public getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1966
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 1967
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/hardware/Camera$Parameters;

    .line 1969
    .local v8, "parametersHolder":[Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$29;

    invoke-direct {v2, p0, v8, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$29;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;[Landroid/hardware/Camera$Parameters;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "get parameters"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v8, v1

    return-object v1

    .line 1977
    :catch_0
    move-exception v7

    .line 1978
    .local v7, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 3

    .prologue
    .line 1985
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1297
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$6;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    .prologue
    .line 1912
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$26;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$26;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    :goto_0
    return-void

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$27;

    invoke-direct {v2, p0, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$27;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :goto_0
    return-void

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1943
    if-nez p1, :cond_0

    .line 1944
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v2

    const-string v3, "null parameters in setParameters()"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1961
    :goto_0
    return-void

    .line 1947
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "flattenedParameters":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v2

    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$28;

    invoke-direct {v3, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$28;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 1227
    return-void
.end method

.method public setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 1255
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1896
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$25;

    invoke-direct {v2, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$25;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/hardware/Camera$OnZoomChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    :goto_0
    return-void

    .line 1903
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopBurst()V
    .locals 3

    .prologue
    .line 1687
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$17;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1705
    :goto_0
    return-void

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopPanorama()V
    .locals 3

    .prologue
    .line 1850
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$23;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$23;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :goto_0
    return-void

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "shutter"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .param p3, "raw"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p4, "post"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p5, "jpeg"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .prologue
    .line 1316
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$7;

    invoke-direct {v6, p0, p5, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$7;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Landroid/os/Handler;)V

    .line 1337
    .local v6, "jpegCallback":Landroid/hardware/Camera$PictureCallback;
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v8

    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl$8;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    :goto_0
    return-void

    .line 1356
    :catch_0
    move-exception v7

    .line 1357
    .local v7, "ex":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
