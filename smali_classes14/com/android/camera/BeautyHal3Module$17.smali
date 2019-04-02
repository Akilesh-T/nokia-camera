.class Lcom/android/camera/BeautyHal3Module$17;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$17;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$17;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$4000(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3ModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1900
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$17;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$4000(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->onStopFaceDetection()V

    .line 1901
    return-void
.end method
