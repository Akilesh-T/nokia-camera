.class public Lcom/android/camera/burst/BurstFacadeFactory;
.super Ljava/lang/Object;
.source "BurstFacadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstFacadeFactory$BurstFacadeStub;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)Lcom/android/camera/burst/BurstFacade;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "cameraActivity"    # Lcom/android/camera/CameraActivity;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p4, "orientationController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p5, "readyStateListener"    # Lcom/android/camera/burst/BurstReadyStateChangeListener;

    .prologue
    .line 105
    new-instance v0, Lcom/android/camera/burst/BurstFacadeFactory$BurstFacadeStub;

    invoke-direct {v0}, Lcom/android/camera/burst/BurstFacadeFactory$BurstFacadeStub;-><init>()V

    .line 107
    .local v0, "burstFacade":Lcom/android/camera/burst/BurstFacade;
    sget-object v1, Lcom/android/camera/burst/BurstFacadeFactory$1;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    invoke-virtual {p3}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 136
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isZSLSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;

    .end local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    new-instance v1, Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/camera/burst/BurstFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)V

    new-instance v2, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;-><init>(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;)V

    .line 143
    .end local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    .restart local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    :cond_0
    :goto_0
    return-object v0

    .line 112
    .restart local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    :pswitch_0
    new-instance v0, Lcom/android/camera/video/ToastingVideoRecorderDecorator;

    .end local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    new-instance v1, Lcom/android/camera/video/VideoFacadeImpl;

    check-cast p5, Lcom/android/camera/video/RecordReadyStateChangeListener;

    .end local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    invoke-direct {v1, p0, p4, p5}, Lcom/android/camera/video/VideoFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V

    new-instance v2, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/ToastingVideoRecorderDecorator;-><init>(Lcom/android/camera/video/VideoFacade;Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;)V

    .line 115
    .restart local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    goto :goto_0

    .line 118
    .restart local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    :pswitch_1
    new-instance v0, Lcom/android/camera/video/ToastingVideoRecorderDecorator;

    .end local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    new-instance v1, Lcom/android/camera/video/DualSightVideoFacadeImpl;

    check-cast p5, Lcom/android/camera/video/RecordReadyStateChangeListener;

    .end local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    invoke-direct {v1, p0, p4, p5}, Lcom/android/camera/video/DualSightVideoFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V

    new-instance v2, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/ToastingVideoRecorderDecorator;-><init>(Lcom/android/camera/video/VideoFacade;Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;)V

    .line 121
    .restart local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    goto :goto_0

    .line 123
    .restart local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    :pswitch_2
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isZSLSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;

    .end local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    new-instance v1, Lcom/android/camera/panorama/PanoFacadeImpl;

    check-cast p5, Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    .end local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    invoke-direct {v1, p0, p4, p5}, Lcom/android/camera/panorama/PanoFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/panorama/PanoReadyStateChangeListener;)V

    new-instance v2, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;-><init>(Lcom/android/camera/panorama/PanoramaFacade;Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;)V

    .restart local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    goto :goto_0

    .line 131
    .restart local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    :pswitch_3
    new-instance v0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;

    .end local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl;

    check-cast p5, Lcom/android/camera/video/RecordReadyStateChangeListener;

    .end local p5    # "readyStateListener":Lcom/android/camera/burst/BurstReadyStateChangeListener;
    invoke-direct {v1, p0, p1, p4, p5}, Lcom/android/camera/video/StreamingFacadeImpl;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V

    new-instance v2, Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;-><init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/video/ToastingVideoStreamingDecorator;-><init>(Lcom/android/camera/video/VideoFacade;Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;)V

    .line 134
    .restart local v0    # "burstFacade":Lcom/android/camera/burst/BurstFacade;
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
