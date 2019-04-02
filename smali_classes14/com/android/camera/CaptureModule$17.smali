.class Lcom/android/camera/CaptureModule$17;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 2022
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .param p1, "hdrEnabled"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2006
    iget-object v2, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OneCameraProvider;->waitingForCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GcamHelper;->hasGcamCapture(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2012
    iget-object v2, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v0}, Lcom/android/camera/CaptureModule;->access$3402(Lcom/android/camera/CaptureModule;Z)Z

    .line 2013
    iget-object v0, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, v1}, Lcom/android/camera/CaptureModule;->access$700(Lcom/android/camera/CaptureModule;Z)V

    goto :goto_0

    .line 2015
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CaptureModule$17;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :goto_1
    invoke-static {v2, v1}, Lcom/android/camera/CaptureModule;->access$3502(Lcom/android/camera/CaptureModule;Z)Z

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method
