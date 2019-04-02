.class public Lcom/android/ex/camera2/portability/extension/CameraSettingExtensionCreator;
.super Ljava/lang/Object;
.source "CameraSettingExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create()Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 16
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 17
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraSettingExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraSettingExtension;-><init>()V

    .line 25
    .local v0, "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    :goto_0
    return-object v0

    .line 18
    .end local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 19
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;-><init>()V

    .restart local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    goto :goto_0

    .line 20
    .end local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/extension/SPTCameraSettingExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/SPTCameraSettingExtension;-><init>()V

    .restart local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    goto :goto_0

    .line 23
    .end local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    :cond_2
    new-instance v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraSettingExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/AOSPCameraSettingExtension;-><init>()V

    .restart local v0    # "cameraSettingExtension":Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
    goto :goto_0
.end method
