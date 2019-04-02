.class public Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtensionCreator;
.super Ljava/lang/Object;
.source "CameraCapabilitiesExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 13
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 14
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/QCCameraCapabilitiesExtension;-><init>()V

    .line 22
    .local v0, "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    :goto_0
    return-object v0

    .line 15
    .end local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraCapabilitiesExtension;-><init>()V

    .restart local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    goto :goto_0

    .line 17
    .end local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/extension/SPTCameraCapabilitiesExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/SPTCameraCapabilitiesExtension;-><init>()V

    .restart local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    goto :goto_0

    .line 20
    .end local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    :cond_2
    new-instance v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraCapabilitiesExtension;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/AOSPCameraCapabilitiesExtension;-><init>()V

    .restart local v0    # "parameterHelper":Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
    goto :goto_0
.end method
