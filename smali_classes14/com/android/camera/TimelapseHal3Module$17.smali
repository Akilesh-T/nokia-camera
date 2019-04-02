.class Lcom/android/camera/TimelapseHal3Module$17;
.super Ljava/lang/Object;
.source "TimelapseHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapseHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$17;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$17;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$4000(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/TimelapseHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/TimelapseHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2044
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module$17;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v0}, Lcom/android/camera/TimelapseHal3Module;->access$4000(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/TimelapseHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/TimelapseHal3ModuleUI;->onStopFaceDetection()V

    .line 2045
    return-void
.end method
