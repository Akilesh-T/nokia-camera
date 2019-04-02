.class public Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator;
.super Ljava/lang/Object;
.source "OneCameraManagerExtCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v1

    .line 20
    .local v1, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_0

    .line 21
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraManagerExtention;

    .end local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraManagerExtention;-><init>()V

    .line 29
    .restart local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_1

    .line 23
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;

    .end local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKOneCameraManagerExtention;-><init>()V

    .restart local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    goto :goto_0

    .line 24
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v1, v2, :cond_2

    .line 25
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;

    .end local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;-><init>()V

    .restart local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;

    .end local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    invoke-direct {v0}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;-><init>()V

    .restart local v0    # "oneCameraManagerExtention":Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
    goto :goto_0
.end method
