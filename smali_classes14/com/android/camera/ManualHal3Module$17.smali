.class Lcom/android/camera/ManualHal3Module$17;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$17;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$17;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualAbstractHal3UI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2114
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$17;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v0}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->onStopFaceDetection()V

    .line 2115
    return-void
.end method
