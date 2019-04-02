.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    }
.end annotation


# instance fields
.field private mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

.field private mCameraId:I

.field private mCancelAfPending:I

.field private mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

.field private mWarmStartId:I

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;Landroid/os/Looper;)V
    .locals 1
    .param p2, "agent"    # Lcom/android/ex/camera2/portability/CameraAgent;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, -0x1

    .line 348
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 349
    invoke-direct {p0, p3}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    .line 327
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    .line 329
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 350
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    .line 351
    return-void
.end method

.method private applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x0

    .line 1047
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v4

    .line 1048
    .local v4, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    .line 1049
    .local v2, "photoSize":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1050
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    .line 1051
    .local v3, "previewSize":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1053
    const-string v6, "video-size"

    invoke-virtual {p1, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "videoSize":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1055
    const-string v6, "video-size"

    invoke-virtual {p2, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    .line 1059
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMin()I

    move-result v6

    .line 1060
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFpsRangeMax()I

    move-result v7

    .line 1059
    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1064
    :goto_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewFormat()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 1065
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPhotoJpegCompressionQuality()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1066
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1067
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v6

    .line 1068
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    .line 1067
    invoke-direct {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->zoomRatioToIndex(FLjava/util/List;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1071
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExposureCompensationIndex()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1072
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1074
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1075
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1076
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 1077
    invoke-static {v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlipMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;

    move-result-object v7

    .line 1076
    invoke-virtual {v6, p2, v7}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setQCFlipMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1081
    :cond_2
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1082
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoExposureLocked()Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1084
    :cond_3
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1085
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1086
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoWhiteBalanceLocked()Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1088
    :cond_4
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1089
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_c

    .line 1090
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getFocusAreas()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1095
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1096
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_d

    .line 1097
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringAreas()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1102
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq v6, v7, :cond_7

    .line 1103
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1105
    :cond_7
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v6, v7, :cond_8

    .line 1106
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1108
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1111
    :cond_8
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isRecordingHintEnabled()Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1112
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getExifThumbnailSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    .line 1113
    .local v1, "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    if-eqz v1, :cond_9

    .line 1114
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1116
    :cond_9
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoFormat()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1118
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getGpsData()Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    move-result-object v0

    .line 1119
    .local v0, "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    if-nez v0, :cond_e

    .line 1120
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1134
    :cond_a
    :goto_3
    const-string v6, "auto"

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1062
    .end local v0    # "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .end local v1    # "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getPreviewFrameRate()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 1092
    :cond_c
    invoke-virtual {p2, v10}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1099
    :cond_d
    invoke-virtual {p2, v10}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2

    .line 1122
    .restart local v0    # "gpsData":Lcom/android/ex/camera2/portability/CameraSettings$GpsData;
    .restart local v1    # "jpegThumbSize":Lcom/android/ex/camera2/portability/Size;
    :cond_e
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1123
    iget-object v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1127
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1128
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1129
    iget-wide v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1130
    iget-object v6, v0, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private enableShutterSound(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 381
    return-void
.end method

.method private setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 387
    :try_start_0
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2    # "cb":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 363
    return-void
.end method

.method private setMetadataCallback(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->setCameraMetaData(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0
.end method

.method private setPreviewTexture(Ljava/lang/Object;)V
    .locals 3
    .param p1, "surfaceTexture"    # Ljava/lang/Object;

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    .end local p1    # "surfaceTexture":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Could not set preview texture"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 355
    return-void
.end method

.method private stopFaceDetection()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 359
    return-void
.end method

.method private zoomRatioToIndex(FLjava/util/List;)I
    .locals 4
    .param p1, "ratio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1144
    .local p2, "percentages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 1145
    .local v2, "percent":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1146
    .local v0, "index":I
    if-ltz v0, :cond_0

    move v1, v0

    .line 1156
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1151
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v3, v0, 0x1

    neg-int v0, v3

    .line 1152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 1154
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v1, v0

    .line 1156
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method


# virtual methods
.method public abortCapture()V
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 510
    invoke-super/range {p0 .. p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 513
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip handleMessage - action = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 515
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 516
    .local v7, "cameraId":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 517
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 518
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-interface {v5, v6, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    .line 1043
    .end local v7    # "cameraId":I
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage - action = \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    sget-boolean v5, Landroid/util/CameraPerformanceTracker;->DEBUG:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v28

    .line 526
    .local v28, "profile":Lcom/android/camera/stats/profiler/Profile;
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    .line 528
    .local v17, "cameraAction":I
    sparse-switch v17, :sswitch_data_0

    .line 997
    :try_start_0
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid CameraProxy message="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :cond_2
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    .line 1038
    if-eqz v28, :cond_0

    .line 1039
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1040
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 524
    .end local v17    # "cameraAction":I
    .end local v28    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :cond_3
    const/16 v28, 0x0

    goto :goto_1

    .line 530
    .restart local v17    # "cameraAction":I
    .restart local v28    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    .line 531
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warm start camera Fail, mCameraState = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1000
    :catch_0
    move-exception v23

    .line 1001
    .local v23, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v18

    .line 1002
    .local v18, "cameraState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraAction["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] at CameraState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1004
    .local v22, "errorContext":Ljava/lang/String;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException during "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->invalidate()V

    .line 1009
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_5

    .line 1010
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Release camera since mCamera is not null."

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_4

    .line 1012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->invalidate(Landroid/os/Handler;)V

    .line 1013
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1016
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1020
    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 1025
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2d

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_2d

    .line 1026
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1027
    .restart local v7    # "cameraId":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 1028
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1029
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v8

    .line 1028
    invoke-interface {v5, v6, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1037
    .end local v7    # "cameraId":I
    :cond_7
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    .line 1038
    if-eqz v28, :cond_0

    .line 1039
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1040
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 535
    .end local v18    # "cameraState":I
    .end local v22    # "errorContext":Ljava/lang/String;
    .end local v23    # "ex":Ljava/lang/RuntimeException;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_a

    .line 536
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Warm start camera Fail, mCamera != null"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1037
    :catchall_0
    move-exception v5

    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    .line 1038
    if-eqz v28, :cond_9

    .line 1039
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1040
    const/16 v28, 0x0

    :cond_9
    throw v5

    .line 540
    :cond_a
    :try_start_6
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 541
    .restart local v7    # "cameraId":I
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warm start camera "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " with camera1 API"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 543
    if-eqz v28, :cond_b

    .line 544
    :try_start_7
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 546
    :cond_b
    invoke-static {v7}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 547
    if-eqz v28, :cond_c

    .line 548
    const-string v5, "openCamera done"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 550
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_11

    .line 551
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warm start camera success : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    .line 554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-static {v5, v7}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCreator;->create(Landroid/hardware/Camera;I)Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    .line 555
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 556
    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 559
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v6

    .line 558
    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 560
    if-eqz v28, :cond_d

    .line 561
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 563
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    new-instance v8, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 564
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_5
    invoke-direct {v8, v9, v5}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;I)V

    .line 563
    invoke-static {v6, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$502(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 565
    if-eqz v28, :cond_e

    .line 566
    const-string v5, "new AndroidCameraCapabilities"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 569
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 573
    :catch_1
    move-exception v21

    .line 574
    .local v21, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warm start camera fail : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_f

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->invalidate(Landroid/os/Handler;)V

    .line 578
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 581
    :cond_f
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 585
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 586
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 564
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    .line 571
    :cond_11
    :try_start_b
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Warm start camera fail : camera is null."

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 582
    .restart local v21    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v23

    .line 583
    .local v23, "ex":Ljava/lang/Exception;
    :try_start_c
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Fail when calling Camera.release()."

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 585
    const/4 v5, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 586
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    goto/16 :goto_2

    .line 585
    .end local v23    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 586
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    throw v5

    .line 593
    .end local v7    # "cameraId":I
    .end local v21    # "e":Ljava/lang/Exception;
    :sswitch_1
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "CameraActions.OPEN_CAMERA called"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 594
    :cond_12
    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->removeMessages(I)V

    .line 595
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 596
    .local v25, "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 597
    .restart local v7    # "cameraId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 598
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-interface {v0, v7, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 602
    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    if-eq v5, v7, :cond_15

    .line 603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_15

    .line 604
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close previous warm start camera : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_14

    .line 606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->invalidate(Landroid/os/Handler;)V

    .line 607
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 610
    :cond_14
    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 614
    const/4 v5, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 618
    :cond_15
    :goto_6
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_1d

    .line 621
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening camera "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " with camera1 API"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 622
    if-eqz v28, :cond_16

    .line 623
    invoke-interface/range {v28 .. v28}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 625
    :cond_16
    invoke-static {v7}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 626
    if-eqz v28, :cond_17

    .line 627
    const-string v5, "CameraDeviceOpenerUtil.openCamera done"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 630
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_1c

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-static {v5, v7}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCreator;->create(Landroid/hardware/Camera;I)Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    .line 632
    if-eqz v28, :cond_18

    .line 633
    const-string v5, "mCameraExtension created"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 635
    :cond_18
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 636
    new-instance v5, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 638
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 639
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v6

    .line 638
    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$402(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 640
    if-eqz v28, :cond_19

    .line 641
    const-string v5, "mCharacteristics created"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 643
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    new-instance v8, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    .line 644
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    :goto_7
    invoke-direct {v8, v9, v5}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;I)V

    .line 643
    invoke-static {v6, v8}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$502(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    .line 645
    if-eqz v28, :cond_1a

    .line 646
    const-string v5, "mCapabilities created"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 649
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 652
    if-eqz v25, :cond_2

    .line 653
    new-instance v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 654
    invoke-static {v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 655
    .local v4, "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 611
    .end local v4    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    :catch_3
    move-exception v21

    .line 612
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Fail when calling Camera.release()."

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 614
    const/4 v5, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    goto/16 :goto_6

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    throw v5

    .line 644
    :cond_1b
    const/4 v5, 0x0

    goto :goto_7

    .line 658
    :cond_1c
    if-eqz v25, :cond_2

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-interface {v0, v7, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 663
    :cond_1d
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "camera "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " already opened."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 666
    if-eqz v25, :cond_2

    .line 667
    new-instance v4, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 668
    invoke-static {v9}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v10}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 669
    .restart local v4    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_2

    .line 676
    .end local v4    # "cameraProxy":Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .end local v7    # "cameraId":I
    .end local v25    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :sswitch_2
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "CameraActions.RELEASE called"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_22

    .line 678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_1f

    .line 679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->invalidate(Landroid/os/Handler;)V

    .line 680
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    .line 682
    :cond_1f
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_20

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "release Camera start: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 683
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 684
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "release Camera end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 685
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 686
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    .line 687
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 688
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mWarmStartId:I

    goto/16 :goto_2

    .line 690
    :cond_22
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Releasing camera without any camera opened."

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 696
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;

    .line 698
    .local v20, "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 700
    .restart local v7    # "cameraId":I
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->reconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 708
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 709
    if-eqz v20, :cond_2

    .line 710
    new-instance v8, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 712
    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v14

    const/4 v15, 0x0

    move v11, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraProxyImpl;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/hardware/Camera;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$1;)V

    .line 710
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    goto/16 :goto_2

    .line 701
    :catch_4
    move-exception v23

    .line 702
    .local v23, "ex":Ljava/io/IOException;
    if-eqz v20, :cond_2

    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;->onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 718
    .end local v7    # "cameraId":I
    .end local v20    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;
    .end local v23    # "ex":Ljava/io/IOException;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->unlock()V

    .line 719
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_2

    .line 724
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->lock()V

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_2

    .line 731
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setPreviewTexture(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    .line 737
    :sswitch_7
    :try_start_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 738
    :catch_5
    move-exception v21

    .line 739
    .local v21, "e":Ljava/io/IOException;
    :try_start_15
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 745
    .end local v21    # "e":Ljava/io/IOException;
    :sswitch_8
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_23

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "CameraActions.START_PREVIEW_ASYNC called"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 746
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;

    .line 748
    .local v20, "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_24

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startPreview start: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 750
    sget-boolean v5, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v5, :cond_25

    sget-object v5, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startPreview end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    :cond_25
    if-eqz v20, :cond_2

    .line 752
    invoke-virtual/range {v20 .. v20}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;->onPreviewStarted()V

    goto/16 :goto_2

    .line 759
    .end local v20    # "cbForward":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_2

    .line 764
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 769
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 774
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_2

    .line 779
    :sswitch_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    if-lez v5, :cond_26

    .line 780
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 784
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_27

    .line 785
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 787
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_2

    .line 794
    :sswitch_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    .line 795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    goto/16 :goto_2

    .line 806
    :sswitch_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCancelAfPending:I

    goto/16 :goto_2

    .line 811
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setAutoFocusMoveCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 817
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 818
    invoke-static {v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v6

    .line 817
    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 823
    .local v26, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-lez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 824
    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$400(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getJpegOrientation(I)I

    move-result v5

    .line 823
    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_2

    .line 824
    :cond_28
    const/4 v5, 0x0

    goto :goto_8

    .line 831
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 832
    .restart local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_2

    .line 839
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_2

    .line 844
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$FaceDetectionListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_2

    .line 849
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->startFaceDetection()V

    goto/16 :goto_2

    .line 854
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->stopFaceDetection()V

    goto/16 :goto_2

    .line 859
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->setMetadataCallback(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto/16 :goto_2

    .line 864
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 865
    .restart local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/ex/camera2/portability/CameraSettings;

    .line 866
    .local v29, "settings":Lcom/android/ex/camera2/portability/CameraSettings;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->applySettingsToParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V

    .line 867
    if-eqz v29, :cond_29

    .line 868
    invoke-virtual/range {v29 .. v29}, Lcom/android/ex/camera2/portability/CameraSettings;->getAndSetForCaptureOnlyOnce()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 869
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->applyCaptureSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V

    .line 874
    :cond_29
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_2

    .line 871
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$500(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    move-result-object v5

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->applyPreviewSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V

    goto :goto_9

    .line 880
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v29    # "settings":Lcom/android/ex/camera2/portability/CameraSettings;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 881
    .restart local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_2

    .line 888
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Landroid/hardware/Camera$Parameters;

    move-object v0, v5

    check-cast v0, [Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    .line 889
    .local v27, "parametersHolder":[Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->getBlocking()Landroid/hardware/Camera$Parameters;

    move-result-object v26

    .line 890
    .restart local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v5, 0x0

    aput-object v26, v27, v5

    goto/16 :goto_2

    .line 895
    .end local v26    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v27    # "parametersHolder":[Landroid/hardware/Camera$Parameters;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_2

    .line 900
    :sswitch_1c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->enableShutterSound(Z)V

    goto/16 :goto_2

    :cond_2b
    const/4 v5, 0x0

    goto :goto_a

    .line 905
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mParameterCache:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ParametersCache;->invalidate()V

    goto/16 :goto_2

    .line 910
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2c

    .line 911
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 913
    :cond_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    .line 914
    .local v19, "captureCallbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_2

    .line 923
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->abortCapture(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 929
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 930
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 931
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 932
    .local v16, "callbacks":Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->startBurst(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    goto/16 :goto_2

    .line 937
    .end local v16    # "callbacks":Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->stopBurst(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 943
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 945
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .line 946
    .local v16, "callbacks":Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->startPanorama(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    goto/16 :goto_2

    .line 951
    .end local v16    # "callbacks":Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->stopPanorama(Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 957
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 959
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 960
    .local v19, "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->takeHDRPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    goto/16 :goto_2

    .line 965
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 966
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 967
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 968
    .restart local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->takeDenoisePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    goto/16 :goto_2

    .line 973
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 974
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 975
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 976
    .restart local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->takeLowLightPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    goto/16 :goto_2

    .line 981
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 982
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 983
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 984
    .restart local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->takeBeautyPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    goto/16 :goto_2

    .line 989
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    if-eqz v5, :cond_2

    .line 990
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 991
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    .line 992
    .restart local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension;->takeBokehPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    .line 1017
    .end local v19    # "captureCallbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    .restart local v18    # "cameraState":I
    .restart local v22    # "errorContext":Ljava/lang/String;
    .local v23, "ex":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v21

    .line 1018
    .local v21, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v5

    const-string v6, "Fail when calling Camera.release()."

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1020
    const/4 v5, 0x0

    :try_start_17
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    goto/16 :goto_3

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCamera:Landroid/hardware/Camera;

    throw v5

    .line 1032
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mAgent:Lcom/android/ex/camera2/portability/CameraAgent;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v24

    .line 1033
    .local v24, "exceptionHandler":Lcom/android/ex/camera2/portability/CameraExceptionHandler;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    .line 1033
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_4

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0x65 -> :sswitch_6
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
        0x68 -> :sswitch_a
        0x69 -> :sswitch_c
        0x6a -> :sswitch_7
        0x6b -> :sswitch_1b
        0x6c -> :sswitch_b
        0xc9 -> :sswitch_19
        0xca -> :sswitch_1a
        0xcb -> :sswitch_1d
        0xcc -> :sswitch_18
        0x12d -> :sswitch_d
        0x12e -> :sswitch_e
        0x12f -> :sswitch_10
        0x130 -> :sswitch_13
        0x131 -> :sswitch_f
        0x1cd -> :sswitch_14
        0x1ce -> :sswitch_15
        0x1cf -> :sswitch_16
        0x1d7 -> :sswitch_17
        0x1f5 -> :sswitch_1c
        0x1f6 -> :sswitch_11
        0x1f7 -> :sswitch_12
        0x259 -> :sswitch_1e
        0x25a -> :sswitch_1f
        0x2bd -> :sswitch_20
        0x2be -> :sswitch_21
        0x2bf -> :sswitch_22
        0x2c0 -> :sswitch_23
        0x2c1 -> :sswitch_24
        0x2c2 -> :sswitch_25
        0x2c3 -> :sswitch_26
        0x2c4 -> :sswitch_27
        0x2c5 -> :sswitch_28
    .end sparse-switch
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 492
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError - errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraError(I)V

    .line 494
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->getCurrentMessage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 496
    .local v0, "lastCameraAction":I
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media server died."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->mCameraId:I

    .line 498
    invoke-virtual {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->this$0:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;

    .line 500
    invoke-static {v4}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v4

    .line 496
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    .line 502
    .end local v0    # "lastCameraAction":I
    :cond_0
    return-void
.end method

.method public requestStartBurst(Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 1
    .param p1, "burstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    const/16 v0, 0x2bd

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 404
    return-void
.end method

.method public requestStartPanorama(Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 1
    .param p1, "panoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    const/16 v0, 0x2bf

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method

.method public requestStopBurst()V
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x2be

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    return-void
.end method

.method public requestStopPanorama()V
    .locals 1

    .prologue
    .line 415
    const/16 v0, 0x2c0

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    return-void
.end method

.method public requestTakeBeautyPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V
    .locals 10
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "jpegRotation"    # I
    .param p6, "isUsePostProcess"    # Z
    .param p7, "isCameraFrontFacing"    # Z
    .param p8, "notSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .prologue
    .line 473
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p8

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZZ)V

    .line 475
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    const/16 v1, 0x2c4

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 476
    return-void
.end method

.method public requestTakeBokehPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V
    .locals 10
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "bokeh"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;
    .param p5, "jpegRotation"    # I
    .param p6, "notSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .prologue
    .line 485
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZZ)V

    .line 487
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    const/16 v1, 0x2c5

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 488
    return-void
.end method

.method public requestTakeDenoisePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZIZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;Z)V
    .locals 12
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "jpegRotation"    # I
    .param p6, "isUsePostProcess"    # Z
    .param p7, "isoValue"    # I
    .param p8, "isCameraFrontFacing"    # Z
    .param p9, "notSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;
    .param p10, "isLongExposureTime"    # Z

    .prologue
    .line 446
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p9

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V

    .line 447
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    const/16 v1, 0x2c2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    return-void
.end method

.method public requestTakeHDRPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V
    .locals 10
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "jpegRotation"    # I
    .param p6, "isUsePostProcess"    # Z
    .param p7, "isCameraFrontFacing"    # Z
    .param p8, "notSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .prologue
    .line 431
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p8

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZZ)V

    .line 433
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    const/16 v1, 0x2c1

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public requestTakeLowLightPicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IZIZLcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;)V
    .locals 11
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "jpegRotation"    # I
    .param p6, "isUsePostProcess"    # Z
    .param p7, "isoValue"    # I
    .param p8, "isCameraFrontFacing"    # Z
    .param p9, "notSupportCallback"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .prologue
    .line 460
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p9

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZ)V

    .line 461
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
    const/16 v1, 0x2c3

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void
.end method

.method public requestTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 6
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postView"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 398
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 399
    .local v0, "callbacks":Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
    const/16 v1, 0x259

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 400
    return-void
.end method
