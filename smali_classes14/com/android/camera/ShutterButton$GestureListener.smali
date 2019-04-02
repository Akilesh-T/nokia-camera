.class Lcom/android/camera/ShutterButton$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/camera/ShutterButton;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/camera/ShutterButton$GestureListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ShutterButton;Lcom/android/camera/ShutterButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ShutterButton;
    .param p2, "x1"    # Lcom/android/camera/ShutterButton$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/camera/ShutterButton$GestureListener;-><init>(Lcom/android/camera/ShutterButton;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    const/high16 v1, 0x42200000    # 40.0f

    iget-object v2, p0, Lcom/android/camera/ShutterButton$GestureListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/camera/ShutterButton;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 187
    invoke-static {}, Lcom/android/camera/ShutterButton;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "ignore onLongPress during scroll"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ShutterButton$GestureListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    invoke-static {}, Lcom/android/camera/ShutterButton;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "ignore onLongPress during no focus"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ShutterButton$GestureListener;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v1}, Lcom/android/camera/ShutterButton;->access$100(Lcom/android/camera/ShutterButton;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 195
    .local v0, "listener":Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    iget-object v2, p0, Lcom/android/camera/ShutterButton$GestureListener;->this$0:Lcom/android/camera/ShutterButton;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/ShutterButton;->access$202(Lcom/android/camera/ShutterButton;Z)Z

    .line 196
    invoke-interface {v0}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed()V

    goto :goto_1
.end method
