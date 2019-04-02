.class Lcom/android/camera/CameraActivity$24;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->registMediaObserver()V
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
    .line 3292
    iput-object p1, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3295
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3336
    :cond_0
    :goto_0
    return-void

    .line 3296
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripContentObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    .line 3299
    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripContentObserver;->isMediaDataChangedDuringPause()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3300
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$2300(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3301
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$24$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$24$1;-><init>(Lcom/android/camera/CameraActivity$24;)V

    iget-object v2, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    .line 3307
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v4

    .line 3301
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    .line 3317
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 3318
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 3320
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$24$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$24$3;-><init>(Lcom/android/camera/CameraActivity$24;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 3328
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$24$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$24$4;-><init>(Lcom/android/camera/CameraActivity$24;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    goto :goto_0

    .line 3309
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$24$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$24$2;-><init>(Lcom/android/camera/CameraActivity$24;)V

    iget-object v2, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    .line 3314
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$24;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v4

    .line 3309
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V

    goto :goto_1
.end method
