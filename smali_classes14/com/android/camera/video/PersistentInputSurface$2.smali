.class Lcom/android/camera/video/PersistentInputSurface$2;
.super Ljava/lang/Object;
.source "PersistentInputSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/PersistentInputSurface;

.field final synthetic val$camcorderProfile:Landroid/media/CamcorderProfile;


# direct methods
.method constructor <init>(Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/PersistentInputSurface;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/video/PersistentInputSurface$2;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    iput-object p2, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "video.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "TMP_VIDEO_FILE":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/Storage;->createDirectoryIfNeeded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    invoke-static {}, Lcom/android/camera/video/PersistentInputSurface;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "create directory failed"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    .line 61
    .local v2, "recorder":Landroid/media/MediaRecorder;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 62
    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 64
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 65
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v4, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 66
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 67
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v3}, Lcom/android/camera/video/PersistentInputSurface;->access$100(Lcom/android/camera/video/PersistentInputSurface;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 70
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 71
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v3}, Lcom/android/camera/video/PersistentInputSurface;->access$300(Lcom/android/camera/video/PersistentInputSurface;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 78
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 82
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface$2;->this$0:Lcom/android/camera/video/PersistentInputSurface;

    invoke-static {v3}, Lcom/android/camera/video/PersistentInputSurface;->access$300(Lcom/android/camera/video/PersistentInputSurface;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 78
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v3

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 78
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 80
    :goto_1
    throw v3

    .line 79
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_0
.end method
