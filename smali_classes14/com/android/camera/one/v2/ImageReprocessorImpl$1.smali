.class Lcom/android/camera/one/v2/ImageReprocessorImpl$1;
.super Ljava/lang/Object;
.source "ImageReprocessorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ImageReprocessorImpl;->tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/ImageReprocessorImpl;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;

.field final synthetic val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

.field final synthetic val$imgName:Lcom/google/common/base/Optional;

.field final synthetic val$needThumbnail:Z

.field final synthetic val$processingFlags:Ljava/util/Set;

.field final synthetic val$reprocessMetadataFuture:Lcom/android/camera/one/v2/photo/MetadataFuture;

.field final synthetic val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ImageReprocessorImpl;JLcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/one/v2/photo/MetadataFuture;ZLcom/google/common/base/Optional;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/ImageReprocessorImpl;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->this$0:Lcom/android/camera/one/v2/ImageReprocessorImpl;

    iput-wide p2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$timestamp:J

    iput-object p4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    iput-object p5, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    iput-object p6, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    iput-object p7, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessMetadataFuture:Lcom/android/camera/one/v2/photo/MetadataFuture;

    iput-boolean p8, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$needThumbnail:Z

    iput-object p9, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imgName:Lcom/google/common/base/Optional;

    iput-object p10, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$processingFlags:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 154
    sget-object v2, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocess image callback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocess image callback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 156
    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, "reprocessImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "Reprocess Image get"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 160
    :cond_1
    if-eqz v1, :cond_5

    .line 161
    sget-object v2, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocess Image get : Timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessMetadataFuture:Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$needThumbnail:Z

    iget-object v5, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imgName:Lcom/google/common/base/Optional;

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    .line 163
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "add Image to ImageSaver"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 175
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$processingFlags:Ljava/util/Set;

    sget-object v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 180
    :cond_4
    :goto_1
    return-void

    .line 165
    :cond_5
    :try_start_1
    sget-object v2, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "reprocess Image fail : get null reprocess image"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/camera/one/v2/ImageReprocessorImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Reprocess image error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    if-eqz v1, :cond_6

    .line 170
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :cond_6
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 175
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$processingFlags:Ljava/util/Set;

    sget-object v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 176
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 178
    :cond_7
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$reprocessStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V

    .line 175
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$processingFlags:Ljava/util/Set;

    sget-object v4, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_BURST_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 176
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$imageSaver:Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    invoke-interface {v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 178
    :cond_8
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/one/v2/ImageReprocessorImpl$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    :cond_9
    throw v2
.end method
