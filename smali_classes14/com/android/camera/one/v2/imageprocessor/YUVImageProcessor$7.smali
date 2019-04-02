.class Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

.field final synthetic val$data:[B

.field final synthetic val$imageFormat:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;I[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$imageFormat:I

    iput-object p3, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageEngine onProcessDone"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 295
    const/4 v15, 0x0

    .line 297
    .local v15, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object v15, v0

    .line 298
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->SR:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$800(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 299
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getSRScale()I

    move-result v17

    .line 300
    .local v17, "scale":I
    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    mul-int v3, v3, v17

    iput v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    .line 301
    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    mul-int v3, v3, v17

    iput v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    .line 303
    .end local v17    # "scale":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageInfo.get"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$imageFormat:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_3

    .line 309
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessDone(data, imageInfo, ImageFormat.NV21), mPostHandleUltraWideDC = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v6}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$900(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$900(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isUseFihUndistortion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    invoke-static {}, Lcom/thirdparty/fih/FihUndistortion;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    new-instance v2, Lcom/thirdparty/fih/FihUndistortion;

    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Lcom/thirdparty/fih/FihUndistortion;-><init>(II)V

    .line 314
    .local v2, "mFihUndistortion":Lcom/thirdparty/fih/FihUndistortion;
    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    int-to-double v8, v3

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    mul-int/lit8 v5, v3, 0x40

    .line 315
    .local v5, "mAlginWidth":I
    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    iget v4, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    const/16 v6, 0x11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$data:[B

    invoke-virtual/range {v2 .. v7}, Lcom/thirdparty/fih/FihUndistortion;->processNV21(IIII[B)I

    move-result v16

    .line 316
    .local v16, "ret":I
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessDone: FihUndistortion ret= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Lcom/thirdparty/fih/FihUndistortion;->release()V

    .line 328
    .end local v2    # "mFihUndistortion":Lcom/thirdparty/fih/FihUndistortion;
    .end local v5    # "mAlginWidth":I
    .end local v16    # "ret":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$data:[B

    const/16 v6, 0x11

    invoke-virtual {v3, v4, v15, v6}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;I)V

    .line 335
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageEngine done"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 338
    return-void

    .line 304
    :catch_0
    move-exception v14

    .line 305
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImageInfo.get fail : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    new-instance v7, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;

    invoke-direct {v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;-><init>()V

    .line 322
    .local v7, "ultraWideEngine":Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;
    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mWidth:I

    int-to-long v8, v3

    iget v3, v15, Lcom/android/camera/processing/imagebackend/ImageInfo;->mHeight:I

    int-to-long v10, v3

    const/16 v12, 0x11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$data:[B

    invoke-virtual/range {v7 .. v13}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->DoUndistortionHAL1(JJI[B)I

    move-result v16

    .line 323
    .restart local v16    # "ret":I
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessDone: DoUndistortionHAL1 = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7}, Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;->release()V

    goto/16 :goto_1

    .line 329
    .end local v7    # "ultraWideEngine":Lcom/thirdparty/arcsoft/ArcsoftSmartUndistortion;
    .end local v16    # "ret":I
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$imageFormat:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->val$data:[B

    invoke-virtual {v3, v4, v15}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;)V

    goto/16 :goto_2

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    goto/16 :goto_2
.end method
