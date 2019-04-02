.class Lcom/android/camera/ManualHal3Module$3$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ManualHal3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module$3;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualHal3Module$3;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualHal3Module$3;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 246
    .local v0, "tapPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/ManualHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSingleTapUpPreview location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$600(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    .line 248
    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$600(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/app/CameraAppUI;->isTouchShutterButton(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ManualAbstractHal3UI;->foldAllOptions()V

    .line 258
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lcom/android/camera/ManualAbstractHal3UI;->setEditableMode(ZZ)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v1}, Lcom/android/camera/ManualHal3Module;->access$900(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    const v3, 0x7f080314

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v3, v3, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    .line 261
    invoke-static {v3}, Lcom/android/camera/ManualHal3Module;->access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v4, v4, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v4}, Lcom/android/camera/ManualHal3Module;->access$900(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_focus_mode"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    invoke-static {}, Lcom/android/camera/ManualHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v3, "The current manual focus mode is not auto, ignore it."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v1}, Lcom/android/camera/ManualHal3Module;->access$200(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-static {v1}, Lcom/android/camera/ManualHal3Module;->access$200(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/focus/FocusController;->clearFocusIndicator()V

    :cond_2
    move v1, v2

    .line 265
    goto :goto_0

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module$3$1;->this$1:Lcom/android/camera/ManualHal3Module$3;

    iget-object v1, v1, Lcom/android/camera/ManualHal3Module$3;->this$0:Lcom/android/camera/ManualHal3Module;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3, v4}, Lcom/android/camera/ManualHal3Module;->access$1000(Lcom/android/camera/ManualHal3Module;II)V

    move v1, v2

    .line 268
    goto/16 :goto_0
.end method
