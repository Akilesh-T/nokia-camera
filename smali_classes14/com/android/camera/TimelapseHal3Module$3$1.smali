.class Lcom/android/camera/TimelapseHal3Module$3$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimelapseHal3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TimelapseHal3Module$3;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/TimelapseHal3Module$3;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapseHal3Module$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TimelapseHal3Module$3;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module$3$1;->this$1:Lcom/android/camera/TimelapseHal3Module$3;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 255
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 256
    .local v0, "tapPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/TimelapseHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapUpPreview location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module$3$1;->this$1:Lcom/android/camera/TimelapseHal3Module$3;

    iget-object v2, v2, Lcom/android/camera/TimelapseHal3Module$3;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v2}, Lcom/android/camera/TimelapseHal3Module;->access$600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module$3$1;->this$1:Lcom/android/camera/TimelapseHal3Module$3;

    iget-object v2, v2, Lcom/android/camera/TimelapseHal3Module$3;->this$0:Lcom/android/camera/TimelapseHal3Module;

    .line 258
    invoke-static {v2}, Lcom/android/camera/TimelapseHal3Module;->access$600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module$3$1;->this$1:Lcom/android/camera/TimelapseHal3Module$3;

    iget-object v2, v2, Lcom/android/camera/TimelapseHal3Module$3;->this$0:Lcom/android/camera/TimelapseHal3Module;

    invoke-static {v2}, Lcom/android/camera/TimelapseHal3Module;->access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/app/CameraAppUI;->isTouchShutterButton(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module$3$1;->this$1:Lcom/android/camera/TimelapseHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/TimelapseHal3Module$3;->this$0:Lcom/android/camera/TimelapseHal3Module;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/TimelapseHal3Module;->access$800(Lcom/android/camera/TimelapseHal3Module;II)V

    .line 265
    const/4 v1, 0x1

    goto :goto_0
.end method
