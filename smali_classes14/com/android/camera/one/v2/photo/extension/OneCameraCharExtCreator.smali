.class public Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtCreator;
.super Ljava/lang/Object;
.source "OneCameraCharExtCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtCreator$OneCameraCharExtensionStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    .locals 3
    .param p0, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 31
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 32
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

    .end local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 40
    .restart local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 34
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraCharExtension;

    .end local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraCharExtension;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .restart local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    goto :goto_0

    .line 35
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 36
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTOneCameraCharExtension;

    .end local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTOneCameraCharExtension;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .restart local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPOneCameraCharExtension;

    .end local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPOneCameraCharExtension;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .restart local v0    # "oneCameraCharExtension":Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
    goto :goto_0
.end method
