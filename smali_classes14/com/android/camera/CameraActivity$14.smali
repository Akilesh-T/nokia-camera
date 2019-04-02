.class Lcom/android/camera/CameraActivity$14;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->notifyNewMedia(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/FilmstripItem;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/FilmstripItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$needThumbnail:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/android/camera/CameraActivity$14;->val$needThumbnail:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/data/FilmstripItem;)Lcom/android/camera/data/FilmstripItem;
    .locals 3
    .param p1, "params"    # [Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 2073
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 2074
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "MetadataLoader.loadMetadata start"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2075
    iget-object v1, p0, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 2076
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "MetadataLoader.loadMetadata done"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2077
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2070
    check-cast p1, [Lcom/android/camera/data/FilmstripItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$14;->doInBackground([Lcom/android/camera/data/FilmstripItem;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2109
    :cond_0
    :goto_0
    return-void

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 2086
    iget-boolean v0, p0, Lcom/android/camera/CameraActivity$14;->val$needThumbnail:Z

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/captureintent/CaptureIntentModule;

    if-nez v0, :cond_0

    .line 2090
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/CameraActivity$14$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraActivity$14$1;-><init>(Lcom/android/camera/CameraActivity$14;Lcom/android/camera/data/FilmstripItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2070
    check-cast p1, Lcom/android/camera/data/FilmstripItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$14;->onPostExecute(Lcom/android/camera/data/FilmstripItem;)V

    return-void
.end method
