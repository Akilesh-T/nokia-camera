.class Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskPreviewChainedPostProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

.field final synthetic val$convertedImage:[I

.field final synthetic val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field final synthetic val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field final synthetic val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

.field final synthetic val$subsample:I


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/ImageToProcess;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;
    .param p2, "otherTask"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p3, "processingPriority"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$convertedImage:[I

    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iput p8, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$subsample:I

    invoke-direct {p0, p2, p3}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "encode JPEG task start"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "postProcessImage":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 120
    .local v20, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$convertedImage:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v4, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v5, v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postProcessImage created : postProcessImage = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 123
    if-eqz v2, :cond_3

    .line 124
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 125
    .end local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v21, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "postProcessImage compress done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 128
    .local v9, "jpegData":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "postProcessImage toByteArray done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->mId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->onPostProcessJpegEncodeDone(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 132
    invoke-static {v9}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v17

    .line 133
    .local v17, "exifData":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "get Exif done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v6, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->createExif(Lcom/google/common/base/Optional;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 135
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "create Exif done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 138
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v19

    .line 140
    .local v19, "imageRotation":I
    if-nez v19, :cond_2

    .line 141
    move-object v15, v2

    .line 148
    .local v15, "postProcessImageRotated":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "rotate postProcessImage done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->mSession:Lcom/android/camera/session/CaptureSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v10, v3, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v11, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v12, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v3, v3, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v13

    invoke-interface/range {v8 .. v15}, Lcom/android/camera/session/CaptureSession;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v18

    .line 151
    .local v18, "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "savePostProcessImage done"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 152
    new-instance v3, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;)V

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v20, v21

    .line 172
    .end local v9    # "jpegData":[B
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v15    # "postProcessImageRotated":Landroid/graphics/Bitmap;
    .end local v17    # "exifData":Lcom/android/camera/exif/ExifInterface;
    .end local v18    # "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    .end local v19    # "imageRotation":I
    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v20, :cond_0

    .line 174
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    const/16 v20, 0x0

    .line 182
    :cond_0
    :goto_3
    return-void

    .line 121
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    goto/16 :goto_0

    .line 143
    .end local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "jpegData":[B
    .restart local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v17    # "exifData":Lcom/android/camera/exif/ExifInterface;
    .restart local v19    # "imageRotation":I
    .restart local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_4
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v19

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 145
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v5, v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget v6, v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v15

    .restart local v15    # "postProcessImageRotated":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 167
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "jpegData":[B
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v15    # "postProcessImageRotated":Landroid/graphics/Bitmap;
    .end local v17    # "exifData":Lcom/android/camera/exif/ExifInterface;
    .end local v19    # "imageRotation":I
    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    const-string v4, "generate POST_PROCESS_IMAGE fail : postProcessPreview is null"

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 169
    :catch_0
    move-exception v16

    .line 170
    .local v16, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate POST_PROCESS_IMAGE fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 172
    if-eqz v20, :cond_0

    .line 174
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 178
    const/16 v20, 0x0

    .line 179
    goto :goto_3

    .line 175
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v16

    .line 176
    .local v16, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close stream fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 178
    const/16 v20, 0x0

    .line 179
    goto/16 :goto_3

    .line 178
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    const/16 v20, 0x0

    throw v3

    .line 175
    .local v16, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v16

    .line 176
    .local v16, "e":Ljava/io/IOException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close stream fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 178
    const/16 v20, 0x0

    .line 179
    goto/16 :goto_3

    .line 178
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    const/16 v20, 0x0

    throw v3

    .line 172
    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v20, :cond_4

    .line 174
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 178
    const/16 v20, 0x0

    :cond_4
    :goto_6
    throw v3

    .line 175
    :catch_3
    move-exception v16

    .line 176
    .restart local v16    # "e":Ljava/io/IOException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close stream fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 178
    const/16 v20, 0x0

    .line 179
    goto :goto_6

    .line 178
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    const/16 v20, 0x0

    throw v3

    .line 172
    .end local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 169
    .end local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v16

    move-object/from16 v20, v21

    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "stream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method
