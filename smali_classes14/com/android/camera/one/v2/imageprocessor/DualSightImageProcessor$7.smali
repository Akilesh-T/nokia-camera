.class Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

.field final synthetic val$height:I

.field final synthetic val$jepgData:[B

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;[BII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$jepgData:[B

    iput p3, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$width:I

    iput p4, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "mImageEngine onProcessDone"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 267
    const/4 v9, 0x0

    .line 269
    .local v9, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object v9, v0

    .line 270
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "mImageInfo.get"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$jepgData:[B

    invoke-static {v2}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v8

    .line 276
    .local v8, "exifInterface":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v8}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v10

    .line 277
    .local v10, "rotation":I
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageInfo.mOrientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    new-instance v2, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v2, v8}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-virtual {v2}, Lcom/android/camera/util/ExifUtil;->populateExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 282
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageInfo;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$width:I

    iget v4, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$height:I

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/ImageInfo;-><init>(Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    .line 283
    .local v1, "imageInfoWrap":Lcom/android/camera/processing/imagebackend/ImageInfo;
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->val$jepgData:[B

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;)V

    .line 284
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 285
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$600(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 286
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    const-string v3, "mImageEngine done"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 287
    return-void

    .line 271
    .end local v1    # "imageInfoWrap":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "exifInterface":Lcom/android/camera/exif/ExifInterface;
    .end local v10    # "rotation":I
    :catch_0
    move-exception v7

    .line 272
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImageInfo.get fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
