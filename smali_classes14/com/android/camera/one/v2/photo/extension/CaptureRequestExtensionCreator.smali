.class public Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtensionCreator;
.super Ljava/lang/Object;
.source "CaptureRequestExtensionCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 17
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 18
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequestExtension;

    .end local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCaptureRequestExtension;-><init>()V

    .line 26
    .restart local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 20
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;

    .end local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;-><init>()V

    .restart local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    goto :goto_0

    .line 21
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 22
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCaptureRequestExtension;

    .end local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTCaptureRequestExtension;-><init>()V

    .restart local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    goto :goto_0

    .line 24
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPCaptureRequestExtension;

    .end local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPCaptureRequestExtension;-><init>()V

    .restart local v0    # "captureRequestExtension":Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    goto :goto_0
.end method
