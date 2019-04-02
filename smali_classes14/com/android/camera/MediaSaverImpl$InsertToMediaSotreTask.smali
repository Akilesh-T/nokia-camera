.class Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertToMediaSotreTask"
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
.field private final mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private final mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 0
    .param p1    # Lcom/android/camera/MediaSaverImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->mValues:Landroid/content/ContentValues;

    .line 587
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 588
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 592
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "InsertToMediaSotreTask start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v0}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->mValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 581
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 598
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertToMediaSotreTask end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 603
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 581
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
