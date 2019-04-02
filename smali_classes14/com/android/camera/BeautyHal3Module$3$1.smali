.class Lcom/android/camera/BeautyHal3Module$3$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BeautyHal3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3Module$3;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BeautyHal3Module$3;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BeautyHal3Module$3;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$3$1;->this$1:Lcom/android/camera/BeautyHal3Module$3;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    .local v0, "tapPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUpPreview location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3$1;->this$1:Lcom/android/camera/BeautyHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$800(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3$1;->this$1:Lcom/android/camera/BeautyHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    .line 262
    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$800(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3$1;->this$1:Lcom/android/camera/BeautyHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3}, Lcom/android/camera/BeautyHal3Module;->access$900(Lcom/android/camera/BeautyHal3Module;II)V

    .line 266
    const/4 v1, 0x1

    goto :goto_0
.end method
