.class public Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;
.super Ljava/lang/Object;
.source "CameraDeviceOpenerUtil.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static sIsLegacyInUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamDevOp"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->sIsLegacyInUsed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLegacyInUsed()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->sIsLegacyInUsed:Z

    return v0
.end method

.method public static openCamera(I)Landroid/hardware/Camera;
    .locals 10
    .param p0, "cameraId"    # I

    .prologue
    .line 20
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v4

    .line 22
    .local v4, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v4, v5, :cond_0

    .line 23
    const/16 v0, 0x100

    .line 25
    .local v0, "CAMERA_HAL_API_VERSION_1_0":I
    :try_start_0
    const-string v5, "android.hardware.Camera"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "openLegacy"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 27
    .local v3, "openMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 27
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;

    .line 29
    .local v1, "camera":Landroid/hardware/Camera;
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->sIsLegacyInUsed:Z

    .line 30
    sget-object v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "LegacyCamera in Used"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "CAMERA_HAL_API_VERSION_1_0":I
    .end local v3    # "openMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 31
    .end local v1    # "camera":Landroid/hardware/Camera;
    .restart local v0    # "CAMERA_HAL_API_VERSION_1_0":I
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 33
    .restart local v1    # "camera":Landroid/hardware/Camera;
    sget-object v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "DefaultCamera in Used"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "CAMERA_HAL_API_VERSION_1_0":I
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v4, v5, :cond_1

    .line 36
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 37
    .restart local v1    # "camera":Landroid/hardware/Camera;
    sget-object v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "DefaultCamera in Used"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v1    # "camera":Landroid/hardware/Camera;
    :cond_1
    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v4, v5, :cond_2

    .line 39
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 40
    .restart local v1    # "camera":Landroid/hardware/Camera;
    sget-object v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "DefaultCamera in Used"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v1    # "camera":Landroid/hardware/Camera;
    :cond_2
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 43
    .restart local v1    # "camera":Landroid/hardware/Camera;
    sget-object v5, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "DefaultCamera in Used"

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
