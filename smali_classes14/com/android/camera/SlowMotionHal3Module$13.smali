.class Lcom/android/camera/SlowMotionHal3Module$13;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 1483
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "hdrEnabled"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1467
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$1700(Lcom/android/camera/SlowMotionHal3Module;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OneCameraProvider;->waitingForCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v2}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1473
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    if-ne p1, v0, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2302(Lcom/android/camera/SlowMotionHal3Module;Z)Z

    .line 1474
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$3200(Lcom/android/camera/SlowMotionHal3Module;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1473
    goto :goto_1

    .line 1476
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$13;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :goto_2
    invoke-static {v2, v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2402(Lcom/android/camera/SlowMotionHal3Module;Z)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
