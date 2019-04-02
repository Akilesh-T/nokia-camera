.class Lcom/android/camera/SlowMotionHal3Module$1;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowMotionHal3Module;
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
    .line 203
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$1;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onZoomRatioChanged(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$1;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/SlowMotionHal3Module;->access$002(Lcom/android/camera/SlowMotionHal3Module;F)F

    .line 207
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$1;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$100(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$1;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$100(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera;->setZoom(F)V

    .line 210
    :cond_0
    return-void
.end method
