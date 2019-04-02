.class Lcom/android/camera/widget/FilmstripLayout$4;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripLayout;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/widget/FilmstripLayout;->access$700(Lcom/android/camera/widget/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$800(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    new-instance v1, Lcom/android/camera/ui/FilmstripGestureRecognizer;

    iget-object v2, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v2}, Lcom/android/camera/widget/FilmstripLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;

    iget-object v4, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/widget/FilmstripLayout$OpenFilmstripGesture;-><init>(Lcom/android/camera/widget/FilmstripLayout;Lcom/android/camera/widget/FilmstripLayout$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/camera/ui/FilmstripGestureRecognizer$Listener;)V

    invoke-static {v0, v1}, Lcom/android/camera/widget/FilmstripLayout;->access$802(Lcom/android/camera/widget/FilmstripLayout;Lcom/android/camera/ui/FilmstripGestureRecognizer;)Lcom/android/camera/ui/FilmstripGestureRecognizer;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$4;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$800(Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/ui/FilmstripGestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    const/4 v0, 0x1

    return v0
.end method
