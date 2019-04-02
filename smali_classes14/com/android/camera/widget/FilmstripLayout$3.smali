.class Lcom/android/camera/widget/FilmstripLayout$3;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripLayout;->init(Landroid/content/Context;)V
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
    .line 144
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripLayout$3;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$3;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripLayout;->invalidate()V

    .line 148
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "l"    # J

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$3;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$500(Lcom/android/camera/widget/FilmstripLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 153
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/widget/FilmstripLayout$3;->this$0:Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/widget/FilmstripLayout;->access$500(Lcom/android/camera/widget/FilmstripLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 158
    return-void
.end method
