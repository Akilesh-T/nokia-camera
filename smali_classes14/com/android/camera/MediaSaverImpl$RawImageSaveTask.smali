.class Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MediaSaverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B

.field private final date:J

.field private height:I

.field private final listener:Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

.field private final loc:Landroid/location/Location;

.field private final mimeType:Ljava/lang/String;

.field private final resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/camera/MediaSaverImpl;

.field private final title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;JLandroid/location/Location;IILandroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V
    .locals 2
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "resolver"    # Landroid/content/ContentResolver;
    .param p10, "listener"    # Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 637
    const-string v0, "image/raw"

    iput-object v0, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->mimeType:Ljava/lang/String;

    .line 644
    iput-object p2, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->data:[B

    .line 645
    iput-object p3, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->title:Ljava/lang/String;

    .line 646
    iput-wide p4, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->date:J

    .line 647
    iput-object p6, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->loc:Landroid/location/Location;

    .line 648
    iput p7, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->width:I

    .line 649
    iput p8, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->height:I

    .line 650
    iput-object p9, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 651
    iput-object p10, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

    .line 652
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->date:J

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->data:[B

    iget v5, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->width:I

    iget v6, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->height:I

    const-string v7, "image/raw"

    invoke-static/range {v0 .. v7}, Lcom/android/camera/Storage;->addRawImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 664
    :catch_0
    move-exception v8

    .line 665
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/camera/MediaSaverImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Failed to write data"

    invoke-static {v0, v1, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 631
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->listener:Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

    invoke-interface {v1, p1}, Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;->OnRawDataSaved(Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    .line 676
    .local v0, "previouslyFull":Z
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    iget-object v2, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v2}, Lcom/android/camera/MediaSaverImpl;->access$100(Lcom/android/camera/MediaSaverImpl;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/camera/MediaSaverImpl;->access$102(Lcom/android/camera/MediaSaverImpl;J)J

    .line 677
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-virtual {v1}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->this$0:Lcom/android/camera/MediaSaverImpl;

    invoke-static {v1}, Lcom/android/camera/MediaSaverImpl;->access$200(Lcom/android/camera/MediaSaverImpl;)V

    .line 680
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method
