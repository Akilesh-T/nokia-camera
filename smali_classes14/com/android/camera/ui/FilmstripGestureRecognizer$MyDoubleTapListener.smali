.class Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;
.super Ljava/lang/Object;
.source "FilmstripGestureRecognizer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmstripGestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmstripGestureRecognizer$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyDoubleTapListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    return v0
.end method
