.class Lcom/android/camera/SlowMotionHal3Module$17$2$2;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module$17$2;->onRecordingStarted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/SlowMotionHal3Module$17$2;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module$17$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/SlowMotionHal3Module$17$2;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$17$2$2;->this$2:Lcom/android/camera/SlowMotionHal3Module$17$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$17$2$2;->this$2:Lcom/android/camera/SlowMotionHal3Module$17$2;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17$2;->this$1:Lcom/android/camera/SlowMotionHal3Module$17;

    iget-object v0, v0, Lcom/android/camera/SlowMotionHal3Module$17;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1890
    return-void
.end method
