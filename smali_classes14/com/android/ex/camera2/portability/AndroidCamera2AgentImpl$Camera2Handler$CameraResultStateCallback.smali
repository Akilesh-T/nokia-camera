.class abstract Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CameraResultStateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;


# direct methods
.method private constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;
    .param p2, "x1"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$1;

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler$CameraResultStateCallback;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$Camera2Handler;)V

    return-void
.end method


# virtual methods
.method public abstract monitorControlStates(Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract resetState()V
.end method
