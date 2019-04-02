.class Lcom/android/camera/burst/BurstCaptureCommand$2;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "BurstCaptureCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstCaptureCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstCaptureCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstCaptureCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstCaptureCommand;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/burst/BurstCaptureCommand$2;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 150
    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 151
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/camera/burst/BurstCaptureCommand$2;->this$0:Lcom/android/camera/burst/BurstCaptureCommand;

    invoke-static {v2}, Lcom/android/camera/burst/BurstCaptureCommand;->access$100(Lcom/android/camera/burst/BurstCaptureCommand;)Lcom/android/camera/burst/EvictionHandler;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/android/camera/burst/EvictionHandler;->onFrameCaptureResultAvailable(JLandroid/hardware/camera2/TotalCaptureResult;)V

    .line 152
    return-void
.end method
