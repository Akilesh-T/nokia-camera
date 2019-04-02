.class Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;
.super Ljava/lang/Object;
.source "Camera2OneCameraOpenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->open(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/SoundPlayer;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

.field final synthetic val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;Lcom/android/camera/one/OneCamera$OpenCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;->this$0:Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;->val$openCallback:Lcom/android/camera/one/OneCamera$OpenCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$OpenCallback;->onFailure()V

    .line 202
    return-void
.end method
