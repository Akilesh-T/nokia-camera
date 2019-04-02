.class Lcom/android/camera/PanoramaHal3Module$16;
.super Ljava/lang/Object;
.source "PanoramaHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3Module;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module$16;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$16;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1863
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module$16;->this$0:Lcom/android/camera/PanoramaHal3Module;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3Module;->access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->onStopFaceDetection()V

    .line 1864
    return-void
.end method
