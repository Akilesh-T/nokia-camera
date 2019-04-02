.class abstract Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureAvailableListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$CaptureAvailableListener;-><init>()V

    return-void
.end method
