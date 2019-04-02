.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
.super Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidCamera2ProxyImpl"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

.field private final mCameraIndex:I

.field private final mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

.field private final mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

.field private mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mShutterSoundEnabled:Z

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;ILandroid/hardware/camera2/CameraDevice;Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1
    .param p2, "agent"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
    .param p3, "cameraIndex"    # I
    .param p4, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p5, "characteristics"    # Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .param p6, "properties"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;-><init>()V

    .line 996
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 997
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    .line 998
    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 999
    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    .line 1000
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    invoke-direct {v0, p6}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    .line 1003
    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    return v0
.end method

.method private getSpecializedCapabilities()Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    return-object v0
.end method


# virtual methods
.method public abortCapture()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public addCallbackBuffer([B)V
    .locals 0
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1066
    return-void
.end method

.method public applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    const/4 v0, 0x0

    .line 1261
    if-nez p1, :cond_1

    .line 1262
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "null parameters in applySettings()"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1275
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    instance-of v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    if-nez v1, :cond_2

    .line 1266
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Provided settings not compatible with the backing framework API"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_2
    const/4 v1, -0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->applySettingsHelper(Lcom/android/ex/camera2/portability/CameraSettings;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applySettingsAndStartBurst(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 0
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
    .line 1198
    return-void
.end method

.method public applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 0
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
    .line 1208
    return-void
.end method

.method public applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V
    .locals 0
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
    .line 1193
    return-void
.end method

.method public autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public dumpDeviceSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableShutterSound(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1280
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mShutterSoundEnabled:Z

    .line 1281
    return-void
.end method

.method public getAgent()Lcom/android/ex/camera2/portability/CameraAgent;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraIndex:I

    return v0
.end method

.method public getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    return-object v0
.end method

.method public getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCharacteristics:Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    return-object v0
.end method

.method public getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCapabilities:Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->buildSettings(Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;)Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mLastSettings:Lcom/android/ex/camera2/portability/CameraSettings;

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
    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :goto_0
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;

    .prologue
    .line 1227
    return-void
.end method

.method public setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 1233
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1058
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1245
    return-void
.end method

.method public setPreviewDataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1054
    return-void
.end method

.method public setPreviewDataCallbackWithBuffer(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .prologue
    .line 1063
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSizesLocked(Z)V

    .line 1039
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1040
    return-void
.end method

.method public setPreviewTextureSync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSizesLocked(Z)V

    .line 1049
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1050
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1222
    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 1237
    return-void
.end method

.method public stopBurst()V
    .locals 0

    .prologue
    .line 1203
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 1241
    return-void
.end method

.method public stopPanorama()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method public takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "shutter"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .param p3, "raw"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p4, "postview"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;
    .param p5, "jpeg"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    .prologue
    .line 1140
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    invoke-direct {v1, p0, p2, p1, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1173
    .local v1, "picListener":Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$2400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v2

    new-instance v3, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;

    invoke-direct {v3, p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->mCameraAgent:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
