.class final Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory$1;
.super Ljava/lang/Object;
.source "ManualAutoFocusFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->create(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/one/Settings3A;Lcom/android/camera/one/OneCameraCaptureSetting;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$afHoldDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;


# direct methods
.method constructor <init>(Lcom/android/camera/async/ResettingDelayedExecutor;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory$1;->val$afHoldDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory$1;->val$afHoldDelayedExecutor:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/android/camera/async/ResettingDelayedExecutor;->reScheduleTask()V

    .line 123
    return-void
.end method
