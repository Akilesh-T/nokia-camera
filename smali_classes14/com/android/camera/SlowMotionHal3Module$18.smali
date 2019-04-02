.class Lcom/android/camera/SlowMotionHal3Module$18;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->closeCamera()V
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
    .line 2171
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$18;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$18;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2175
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$18;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->onStopFaceDetection()V

    .line 2176
    return-void
.end method
