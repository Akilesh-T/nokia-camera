.class public Lcom/android/ex/camera2/portability/extension/AOSPCameraSettingExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
.source "AOSPCameraSettingExtension.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AOSPCamSetExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public applyCaptureSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 22
    return-void
.end method

.method public applyPreviewSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 27
    return-void
.end method
