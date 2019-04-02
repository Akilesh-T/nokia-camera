.class Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "FilmstripGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FilmstripGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;Lcom/android/camera/ui/FilmstripGestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/FilmstripGestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/FilmstripGestureRecognizer$1;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/FilmstripGestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 146
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 145
    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 139
    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/FilmstripGestureRecognizer$MyScaleListener;->this$0:Lcom/android/camera/ui/FilmstripGestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->access$300(Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleEnd()V

    .line 152
    return-void
.end method
