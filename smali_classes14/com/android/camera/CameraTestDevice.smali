.class public Lcom/android/camera/CameraTestDevice;
.super Ljava/lang/Object;
.source "CameraTestDevice.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p0, "info"    # [Landroid/hardware/Camera$CameraInfo;
    .param p1, "camera"    # [Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 30
    return-void
.end method
