.class Lcom/android/camera/CameraActivity$29;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->showUndoDeletionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 4371
    iput-object p1, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4383
    :goto_0
    return-void

    .line 4375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->undoDeletion()Z

    .line 4379
    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4380
    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripController;->goToFilmstrip()V

    .line 4382
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$29;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$7200(Lcom/android/camera/CameraActivity;Z)V

    goto :goto_0
.end method
