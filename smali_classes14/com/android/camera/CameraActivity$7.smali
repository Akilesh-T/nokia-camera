.class Lcom/android/camera/CameraActivity$7;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onFilmStripReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;

.field final synthetic val$profile:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/stats/profiler/Profile;Landroid/support/v4/view/AsyncLayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    iput-object p3, p0, Lcom/android/camera/CameraActivity$7;->val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 734
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$1200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "addSessionListener"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/CameraActivity$7;->val$asyncLayoutInflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1300(Lcom/android/camera/CameraActivity;Landroid/support/v4/view/AsyncLayoutInflater;)V

    .line 759
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "preloadFilmstripItems"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/data/FilmstripContentObserver;

    invoke-direct {v1}, Lcom/android/camera/data/FilmstripContentObserver;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1402(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripContentObserver;)Lcom/android/camera/data/FilmstripContentObserver;

    .line 762
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/data/FilmstripContentObserver;

    invoke-direct {v1}, Lcom/android/camera/data/FilmstripContentObserver;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/CameraActivity;->access$1502(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripContentObserver;)Lcom/android/camera/data/FilmstripContentObserver;

    .line 763
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    .line 765
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v2

    .line 763
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 766
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    .line 768
    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v2

    .line 766
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 770
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1600(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/FilmstripContentObserver;->setActivityPaused(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1700(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1400(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$7$1;-><init>(Lcom/android/camera/CameraActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 782
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1500(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/FilmstripContentObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraActivity$7$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraActivity$7$2;-><init>(Lcom/android/camera/CameraActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/data/FilmstripContentObserver;->setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0, v3}, Lcom/android/camera/CameraActivity;->access$1602(Lcom/android/camera/CameraActivity;Z)Z

    .line 792
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setForegroundChangeListener"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$1900(Lcom/android/camera/CameraActivity;)V

    .line 796
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setupNfcBeamPush"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 798
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 734
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$7;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->val$profile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 812
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFilmStripReady done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 738
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onFilmStripReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0f00d4

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/CameraActivity;->access$302(Lcom/android/camera/CameraActivity;Lcom/android/camera/filmstrip/FilmstripController;)Lcom/android/camera/filmstrip/FilmstripController;

    .line 741
    iget-object v1, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v0, p0, Lcom/android/camera/CameraActivity$7;->this$0:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0f00d3

    .line 742
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 741
    invoke-static {v1, v0}, Lcom/android/camera/CameraActivity;->access$1102(Lcom/android/camera/CameraActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 743
    return-void
.end method
