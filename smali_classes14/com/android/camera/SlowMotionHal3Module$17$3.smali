.class Lcom/android/camera/SlowMotionHal3Module$17$3;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/video/OnRecordTimeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module$17;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SlowMotionHal3Module$17;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowMotionHal3Module$17;

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$17$3;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "reordTimeText"    # Ljava/lang/String;

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$3;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setRecordingTime(Ljava/lang/String;)V

    .line 1963
    return-void
.end method

.method public onRecordTimeWarning(Z)V
    .locals 1
    .param p1, "warning"    # Z

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$3;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setRecordingTimeWarning(Z)V

    .line 1968
    return-void
.end method
