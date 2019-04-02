.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.super Lcom/android/ex/camera2/portability/HistoryHandler;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2Handler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    }
.end annotation


# instance fields
.field private mActiveArray:Landroid/graphics/Rect;

.field private mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private mCameraIndex:I

.field private mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

.field private mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

.field private mCancelAfPending:I

.field private mCaptureReader:Landroid/media/ImageReader;

.field private mCurrentAeState:I

.field private mLegacyDevice:Z

.field private mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

.field private mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

.field private mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

.field private mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

.field private mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

.field private mPhotoSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewSize:Lcom/android/ex/camera2/portability/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewTexture:Landroid/graphics/SurfaceTexture;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 224
    invoke-direct {p0, p2}, Lcom/android/ex/camera2/portability/HistoryHandler;-><init>(Landroid/os/Looper;)V

    .line 189
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 221
    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 782
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$3;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 826
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$4;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 857
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$5;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/media/ImageReader;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotCaptureCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private applyToRequest(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getRequestSettings()Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->union(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Z

    .line 699
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 700
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 702
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v5, v6

    .line 706
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    .line 705
    invoke-virtual {v1, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to apply updated request settings"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 712
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 714
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto :goto_0
.end method

.method private changeState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->setState(I)V

    .line 774
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 775
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    .line 776
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->resetState()V

    .line 779
    :cond_0
    return-void
.end method

.method private closePreviewSession()V
    .locals 3

    .prologue
    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 764
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 769
    return-void

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to close existing camera capture session"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v4, 0x1

    .line 723
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 724
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Ignoring texture setting at inappropriate time"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    if-ne p1, v1, :cond_1

    .line 730
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Optimizing out redundant preview texture setting"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_2

    .line 735
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 738
    :cond_2
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 739
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 741
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 744
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 746
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    .line 747
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 750
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v2

    const/16 v3, 0x100

    .line 749
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 754
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraPreviewStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 753
    invoke-virtual {v1, v2, v3, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Failed to create camera capture session"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public buildSettings(Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 7
    .param p1, "caps"    # Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;

    .prologue
    .line 678
    :try_start_0
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-object v0

    .line 680
    :catch_0
    move-exception v6

    .line 681
    .local v6, "ex":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Unable to query camera device to build settings representation"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    invoke-super/range {p0 .. p1}, Lcom/android/ex/camera2/portability/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    .line 230
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage - action = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-static {v15}, Lcom/android/ex/camera2/portability/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    .line 233
    .local v2, "cameraAction":I
    sparse-switch v2, :sswitch_data_0

    .line 646
    :try_start_0
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unimplemented CameraProxy message="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :catch_0
    move-exception v7

    .line 650
    .local v7, "ex":Ljava/lang/Exception;
    const/4 v13, 0x2

    if-eq v2, v13, :cond_13

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v13, :cond_13

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v13}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 653
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 666
    :cond_0
    instance-of v13, v7, Ljava/lang/RuntimeException;

    if-eqz v13, :cond_1

    .line 667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    .local v5, "commandHistory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$800(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v13

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    .line 669
    invoke-static {v14}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v14

    .line 668
    invoke-virtual {v13, v7, v5, v2, v14}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onCameraException(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    .end local v5    # "commandHistory":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    .line 674
    :goto_0
    return-void

    .line 236
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 237
    .local v10, "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 239
    .local v3, "cameraIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v13

    .line 240
    invoke-interface {v10, v3, v13}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenedAlready(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    .end local v3    # "cameraIndex":I
    .end local v10    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto :goto_0

    .line 245
    .restart local v3    # "cameraIndex":I
    .restart local v10    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .line 246
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$200(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Opening camera index %d (id %s) with camera2 API"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    .line 248
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    if-nez v13, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v13, v14}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onCameraDisabled(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 672
    .end local v3    # "cameraIndex":I
    .end local v10    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :catchall_0
    move-exception v13

    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    throw v13

    .line 255
    .restart local v3    # "cameraIndex":I
    .restart local v10    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$300(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v15, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 261
    .end local v3    # "cameraIndex":I
    .end local v10    # "openCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 262
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Ignoring release at inappropriate time"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v13, :cond_5

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->closePreviewSession()V

    .line 268
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 270
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v13, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v13}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 272
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 274
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 275
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 276
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mActiveArray:Landroid/graphics/Rect;

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v13, :cond_7

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v13}, Landroid/view/Surface;->release()V

    .line 279
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    .line 281
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewTexture:Landroid/graphics/SurfaceTexture;

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    if-eqz v13, :cond_8

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    invoke-virtual {v13}, Landroid/media/ImageReader;->close()V

    .line 284
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    .line 286
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 287
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPhotoSize:Lcom/android/ex/camera2/portability/Size;

    .line 288
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 289
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraId:Ljava/lang/String;

    .line 290
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 303
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_1

    .line 308
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_9

    .line 311
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Refusing to start preview at inappropriate time"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 315
    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOneshotPreviewingCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;

    .line 316
    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/view/Surface;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 319
    invoke-virtual/range {v14 .. v17}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraResultStateCallback:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;

    .line 318
    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v15, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 322
    :catch_1
    move-exception v7

    .line 323
    .local v7, "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_6
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Unable to start preview"

    invoke-static {v13, v14, v7}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 334
    .end local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x10

    if-ge v13, v14, :cond_a

    .line 336
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Refusing to stop preview at inappropriate time"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 340
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v13}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 341
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 378
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    .line 379
    .local v11, "settings":Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->applyToRequest(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V

    goto/16 :goto_1

    .line 384
    .end local v11    # "settings":Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
    :sswitch_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    if-lez v13, :cond_b

    .line 385
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x10

    if-ge v13, v14, :cond_c

    .line 399
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Ignoring attempt to autofocus without preview"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :cond_c
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 408
    .local v1, "callback":Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 448
    .local v6, "deferredCallbackSetter":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    const/16 v13, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 449
    new-instance v12, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v12, v13}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 451
    .local v12, "trigger":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v14, 0x1

    .line 452
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 451
    invoke-virtual {v12, v13, v14}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 454
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/view/Surface;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 455
    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v6, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 458
    :catch_2
    move-exception v7

    .line 459
    .restart local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_8
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Unable to lock autofocus"

    invoke-static {v13, v14, v7}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 468
    .end local v1    # "callback":Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;
    .end local v6    # "deferredCallbackSetter":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    .end local v12    # "trigger":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    :sswitch_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x10

    if-ge v13, v14, :cond_d

    .line 472
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Ignoring attempt to release focus lock without preview"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 477
    :cond_d
    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    .line 478
    new-instance v4, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v4, v13}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 480
    .local v4, "cancel":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v14, 0x2

    .line 481
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 480
    invoke-virtual {v4, v13, v14}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 483
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/view/Surface;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 484
    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    const/4 v15, 0x0

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v15, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 487
    :catch_3
    move-exception v7

    .line 488
    .restart local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_a
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Unable to cancel autofocus"

    invoke-static {v13, v14, v7}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    const/16 v13, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->changeState(I)V

    goto/16 :goto_1

    .line 497
    .end local v4    # "cancel":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .end local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :sswitch_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCancelAfPending:I

    goto/16 :goto_1

    .line 502
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPassiveAfCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    goto/16 :goto_1

    .line 534
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraProxy:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    .line 535
    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getJpegOrientation(I)I

    move-result v13

    .line 534
    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 535
    :cond_e
    const/4 v13, 0x0

    goto :goto_2

    .line 540
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 545
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x10

    if-ge v13, v14, :cond_f

    .line 547
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Photos may only be taken when a preview is active"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->this$0:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;

    invoke-static {v13}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$100(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;)Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraStateHolder;->getState()I

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_10

    .line 552
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Taking a (likely blurry) photo without the lens locked"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    :cond_10
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;

    .line 557
    .local v9, "listener":Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mLegacyDevice:Z

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCurrentAeState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x3

    .line 560
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 559
    invoke-virtual {v13, v14, v15}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x1

    .line 562
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 561
    invoke-virtual {v13, v14, v15}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 571
    :cond_11
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Skipping pre-capture autoexposure convergence"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    move-object/from16 v0, p0

    invoke-virtual {v13, v9, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 574
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/16 v16, 0x2

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/view/Surface;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCaptureReader:Landroid/media/ImageReader;

    move-object/from16 v19, v0

    .line 577
    invoke-virtual/range {v19 .. v19}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v19

    aput-object v19, v17, v18

    .line 575
    invoke-virtual/range {v14 .. v17}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v9, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 579
    :catch_4
    move-exception v7

    .line 580
    .restart local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_c
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Unable to initiate immediate capture"

    invoke-static {v13, v14, v7}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 586
    .end local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :cond_12
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Forcing pre-capture autoexposure convergence"

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$2;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;)V

    .line 628
    .restart local v6    # "deferredCallbackSetter":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    new-instance v8, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPersistentSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v8, v13}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    .line 630
    .local v8, "expose":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v14, 0x1

    .line 631
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 630
    invoke-virtual {v8, v13, v14}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 633
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/view/Surface;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mPreviewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 634
    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v14

    .line 633
    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v6, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 637
    :catch_5
    move-exception v7

    .line 638
    .restart local v7    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :try_start_e
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    const-string v14, "Unable to run autoexposure and perform capture"

    invoke-static {v13, v14, v7}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 654
    .end local v6    # "deferredCallbackSetter":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v8    # "expose":Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .end local v9    # "listener":Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
    .local v7, "ex":Ljava/lang/Exception;
    :cond_13
    :try_start_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-nez v13, :cond_0

    .line 655
    const/4 v13, 0x1

    if-ne v2, v13, :cond_15

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    if-eqz v13, :cond_14

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mOpenCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->mCameraIndex:I

    .line 658
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    move-result-object v15

    .line 657
    invoke-interface {v13, v14, v15}, Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;->onDeviceOpenFailure(ILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 672
    :cond_14
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->unblockSyncWaiters(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 661
    :cond_15
    :try_start_10
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot handle message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mCamera is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0xcc -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_9
        0x131 -> :sswitch_8
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_b
        0x259 -> :sswitch_c
    .end sparse-switch
.end method
