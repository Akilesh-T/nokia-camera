.class Lcom/android/camera/VideoHal3Module$22;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$22;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$22;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2536
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$22;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3ModuleUI;->onStopFaceDetection()V

    .line 2537
    return-void
.end method
