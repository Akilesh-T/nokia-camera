.class Lcom/android/camera/SquareModule$4$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SquareModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$4;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$4;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$4;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v3, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v3, v3, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$700(Lcom/android/camera/SquareModule;)V

    .line 278
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 279
    .local v1, "tapPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSingleTapUpPreview location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v3, v3, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoExposureSupported()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v3, v3, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    .line 281
    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$800(Lcom/android/camera/SquareModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v3, v3, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/app/CameraAppUI;->isTouchShutterButton(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v3, v3, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v3}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_effect_mode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v0

    .line 289
    .local v0, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    sget-object v3, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    if-ne v0, v3, :cond_2

    .line 290
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Animoji enable, so not appear focus window!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SquareModule$4$1;->this$1:Lcom/android/camera/SquareModule$4;

    iget-object v2, v2, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/SquareModule;->access$900(Lcom/android/camera/SquareModule;II)V

    .line 295
    const/4 v2, 0x1

    goto :goto_0
.end method
