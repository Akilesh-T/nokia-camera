.class Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BulkInsertToMediaSotreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private final mValues:[Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;[Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 0
    .param p1    # Lcom/android/camera/MediaSaverImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;
    .param p3, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->mValues:[Landroid/content/ContentValues;

    .line 612
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 613
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 617
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BulkInsertToMediaSotreTask start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v0}, Lcom/android/camera/MediaSaverImpl;->access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->mValues:[Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->addImageToMediaStore(Landroid/content/ContentResolver;[Landroid/content/ContentValues;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 606
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "rowsCreated"    # Ljava/lang/Integer;

    .prologue
    .line 623
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "BulkInsertToMediaSotreTask end"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 624
    if-eqz p1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->mListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;)V

    .line 627
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 606
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
