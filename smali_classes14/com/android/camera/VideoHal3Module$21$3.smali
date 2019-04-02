.class Lcom/android/camera/VideoHal3Module$21$3;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/video/OnRecordTimeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoHal3Module$21;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/VideoHal3Module$21;

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$3;->this$1:Lcom/android/camera/VideoHal3Module$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "reordTimeText"    # Ljava/lang/String;

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$3;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoHal3ModuleUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2202
    return-void
.end method

.method public onRecordTimeWarning(Z)V
    .locals 1
    .param p1, "warning"    # Z

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$3;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoHal3ModuleUI;->setRecordingTimeWarning(Z)V

    .line 2207
    return-void
.end method
