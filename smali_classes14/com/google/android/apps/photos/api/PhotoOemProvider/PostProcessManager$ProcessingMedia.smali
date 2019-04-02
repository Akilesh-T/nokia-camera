.class final Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;
.super Ljava/lang/Object;
.source "PostProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessingMedia"
.end annotation


# instance fields
.field private final JPEG_COMPRESS_RATIO:I

.field private final MAX_WIDTH:I

.field private final MEDIA_TAG:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private descriptors:[Landroid/os/ParcelFileDescriptor;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mediaStoreId:J

.field private final progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final progressStatus:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;


# direct methods
.method constructor <init>(JILcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "mediaStoreId"    # J
    .param p3, "progress"    # I
    .param p4, "progressStatus"    # Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;
    .param p5, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/16 v0, 0xf0

    iput v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MAX_WIDTH:I

    .line 187
    const/16 v0, 0x5f

    iput v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->JPEG_COMPRESS_RATIO:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingMedia_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MEDIA_TAG:Ljava/lang/String;

    .line 192
    iput-wide p1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mediaStoreId:J

    .line 193
    iput-object p4, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->progressStatus:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    .line 194
    invoke-virtual {p0, p5}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    return-void
.end method


# virtual methods
.method closeFileDescriptor()V
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->descriptors:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->descriptors:[Landroid/os/ParcelFileDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->descriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->descriptors:[Landroid/os/ParcelFileDescriptor;

    .line 320
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 315
    .restart local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method getFDfromBitmap(Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-object v7, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 234
    :try_start_0
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MEDIA_TAG:Ljava/lang/String;

    const-string v9, "getFDfromBitmap ignore : item finished."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v7

    move-object v3, v6

    .line 275
    :goto_0
    return-object v3

    .line 239
    :cond_0
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 240
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MEDIA_TAG:Ljava/lang/String;

    const-string v9, "getFDfromBitmap ignore : bitmap not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v7

    move-object v3, v6

    goto :goto_0

    .line 244
    :cond_1
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MEDIA_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFDfromBitmap : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "inputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 250
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 251
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    aget-object v3, v0, v8

    .line 252
    .local v3, "outputFd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x1

    aget-object v2, v0, v8

    .line 253
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    iget-object v8, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    const/16 v9, 0x5f

    invoke-virtual {v8, p1, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    if-eqz v2, :cond_2

    .line 262
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 269
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v7

    goto :goto_0

    .line 307
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 263
    .restart local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "inputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 257
    .end local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 258
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 260
    if-eqz v2, :cond_4

    .line 262
    :try_start_8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 269
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 275
    :cond_5
    :goto_5
    :try_start_a
    monitor-exit v7

    move-object v3, v6

    goto :goto_0

    .line 263
    :catch_3
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 270
    :catch_4
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_6
    if-eqz v2, :cond_6

    .line 262
    :try_start_b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 267
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    .line 269
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 272
    :cond_7
    :goto_8
    :try_start_d
    throw v6

    .line 263
    :catch_5
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "descriptors":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "outputFd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 257
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method getMediaStoreId()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mediaStoreId:J

    return-wide v0
.end method

.method getProgressPercentage()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getProgressStatus()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->progressStatus:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v0

    return v0
.end method

.method getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_0
    const/high16 v0, 0x43700000    # 240.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 203
    .local v7, "scaleSize":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 205
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method isRecycled()Z
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method recycle()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->MEDIA_TAG:Ljava/lang/String;

    const-string v2, "recycle"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->closeFileDescriptor()V

    .line 333
    :cond_1
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateProgressPercentage(I)V
    .locals 3
    .param p1, "percentage"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager$ProcessingMedia;->progressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 219
    return-void
.end method
