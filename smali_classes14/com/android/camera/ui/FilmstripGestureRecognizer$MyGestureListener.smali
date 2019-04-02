.class Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmstripGestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmstripGestureRecognizer$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onDown(FF)Z

    .line 109
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onLongPress(FF)V

    .line 92
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    return v0
.end method
