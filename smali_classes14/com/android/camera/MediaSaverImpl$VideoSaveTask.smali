.class Lcom/android/camera/MediaSaverImpl$VideoSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private path:Ljava/lang/String;

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private final values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p5, "r"    # Landroid/content/ContentResolver;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 490
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->path:Ljava/lang/String;

    .line 491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->values:Landroid/content/ContentValues;

    .line 492
    iput-object p4, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 493
    iput-object p5, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 494
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 9
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v5, "content://media/external/video/media"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 501
    .local v4, "videoTable":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->values:Landroid/content/ContentValues;

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->values:Landroid/content/ContentValues;

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "finalName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "finalFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    iput-object v2, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->path:Ljava/lang/String;

    .line 511
    :cond_0
    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->values:Landroid/content/ContentValues;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    .end local v1    # "finalFile":Ljava/io/File;
    .end local v2    # "finalName":Ljava/lang/String;
    .end local v4    # "videoTable":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 512
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    const-string v6, "failed to add video to media store"

    invoke-static {v5, v6, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    const/4 v3, 0x0

    .line 518
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current video URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 528
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 482
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
