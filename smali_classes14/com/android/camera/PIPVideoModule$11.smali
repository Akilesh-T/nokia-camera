.class Lcom/android/camera/PIPVideoModule$11;
.super Landroid/os/AsyncTask;
.source "PIPVideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->saveVideo()V
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
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2564
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/PIPVideoModule$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "resizeBundles"    # [Ljava/lang/Void;

    .prologue
    .line 2568
    const/4 v1, 0x0

    .line 2570
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "append video xmp data start"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2571
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$2200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2572
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Lcom/android/camera/xmp/DualSightXMPUtil;->DualSightVideoXMP:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2573
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2574
    invoke-static {}, Lcom/android/camera/PIPVideoModule;->access$1100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "append video xmp data end"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 2580
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2577
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2578
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2577
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2575
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2564
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/PIPVideoModule$11;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$2300(Lcom/android/camera/PIPVideoModule;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 2586
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$2400(Lcom/android/camera/PIPVideoModule;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v5}, Lcom/android/camera/PIPVideoModule;->access$2200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2587
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v2}, Lcom/android/camera/PIPVideoModule;->access$2400(Lcom/android/camera/PIPVideoModule;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2588
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-virtual {v2}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v3}, Lcom/android/camera/PIPVideoModule;->access$2200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    .line 2589
    invoke-static {v4}, Lcom/android/camera/PIPVideoModule;->access$2400(Lcom/android/camera/PIPVideoModule;)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v5}, Lcom/android/camera/PIPVideoModule;->access$2500(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v5

    .line 2588
    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/app/MediaSaver;->addDualSightVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 2590
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule$11;->this$0:Lcom/android/camera/PIPVideoModule;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/PIPVideoModule;->access$2402(Lcom/android/camera/PIPVideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 2591
    return-void
.end method
