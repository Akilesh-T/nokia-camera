.class Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;
.super Ljava/lang/Object;
.source "LogicCamImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

.field final synthetic val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    const-string v6, "mImageEngine onProcessDone"

    invoke-interface {v4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 483
    const/16 v24, 0x0

    .line 484
    .local v24, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v0, v4, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v28, v0

    .line 485
    .local v28, "jpegdata":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->useVendorTag:Z

    if-nez v4, :cond_0

    move-object/from16 v0, v28

    array-length v4, v0

    if-lez v4, :cond_0

    .line 486
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "useVendorTag = false"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    new-instance v17, Lcom/android/camera/gdepth/GdpethDataFilter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lcom/android/camera/gdepth/GdpethDataFilter;-><init>([BZ)V

    .line 488
    .local v17, "dataFilter":Lcom/android/camera/gdepth/GdpethDataFilter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/gdepth/GdpethDataFilter;->getBokehType()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/gdepth/GdpethDataFilter;->getDepthData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/gdepth/GdpethDataFilter;->getPrimaryData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 491
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v6, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    .line 494
    .end local v17    # "dataFilter":Lcom/android/camera/gdepth/GdpethDataFilter;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object/from16 v24, v0

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    const-string v6, "mImageInfo.get"

    invoke-interface {v4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-eqz v4, :cond_4

    .line 501
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    move-result-object v10

    .line 502
    .local v10, "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    invoke-virtual {v10}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->init()V

    .line 504
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "Start to do Zeiss bokeh !!"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v38

    .line 507
    .local v38, "start":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v7, v7, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v7, v7

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 508
    .local v11, "image":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 509
    .local v20, "end":J
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "mSubData to Bitmap : %s ms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v12, v20, v38

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 512
    .local v26, "img_width":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 515
    .local v25, "img_height":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v38

    .line 516
    const/16 v5, 0x3f0

    .local v5, "width":I
    const/16 v9, 0x2f4

    .line 517
    .local v9, "height":I
    const/16 v29, -0x1

    .local v29, "maximum":I
    const/16 v30, 0x3e7

    .line 518
    .local v30, "minimum":I
    mul-int v22, v5, v9

    .line 519
    .local v22, "frameSize":I
    move/from16 v0, v22

    new-array v3, v0, [I

    .line 521
    .local v3, "rgba":[I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 522
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v6, v6, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    aget-byte v6, v6, v23

    and-int/lit16 v6, v6, 0xff

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 523
    .local v37, "y":I
    move/from16 v0, v29

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 524
    move/from16 v0, v30

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 525
    aput v37, v3, v23

    .line 521
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 491
    .end local v3    # "rgba":[I
    .end local v5    # "width":I
    .end local v9    # "height":I
    .end local v10    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .end local v11    # "image":Landroid/graphics/Bitmap;
    .end local v20    # "end":J
    .end local v22    # "frameSize":I
    .end local v23    # "i":I
    .end local v25    # "img_height":I
    .end local v26    # "img_width":I
    .end local v29    # "maximum":I
    .end local v30    # "minimum":I
    .end local v37    # "y":I
    .end local v38    # "start":J
    .restart local v17    # "dataFilter":Lcom/android/camera/gdepth/GdpethDataFilter;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 496
    .end local v17    # "dataFilter":Lcom/android/camera/gdepth/GdpethDataFilter;
    :catch_0
    move-exception v18

    .line 497
    .local v18, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mImageInfo.get fail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 527
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v3    # "rgba":[I
    .restart local v5    # "width":I
    .restart local v9    # "height":I
    .restart local v10    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .restart local v11    # "image":Landroid/graphics/Bitmap;
    .restart local v20    # "end":J
    .restart local v22    # "frameSize":I
    .restart local v23    # "i":I
    .restart local v25    # "img_height":I
    .restart local v26    # "img_width":I
    .restart local v29    # "maximum":I
    .restart local v30    # "minimum":I
    .restart local v38    # "start":J
    :cond_2
    sub-int v4, v29, v30

    int-to-float v0, v4

    move/from16 v32, v0

    .line 528
    .local v32, "oriRange":F
    const/high16 v31, 0x437f0000    # 255.0f

    .line 530
    .local v31, "newRange":F
    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 531
    aget v4, v3, v23

    sub-int v4, v4, v30

    int-to-float v4, v4

    div-float v4, v4, v32

    mul-float v4, v4, v31

    float-to-int v0, v4

    move/from16 v37, v0

    .line 532
    .restart local v37    # "y":I
    const/high16 v4, -0x1000000

    shl-int/lit8 v6, v37, 0x10

    add-int/2addr v4, v6

    shl-int/lit8 v6, v37, 0x8

    add-int/2addr v4, v6

    add-int v4, v4, v37

    aput v4, v3, v23

    .line 530
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 534
    .end local v37    # "y":I
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 535
    .local v2, "depth":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 538
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v35

    .line 539
    .local v35, "rs":Landroid/renderscript/RenderScript;
    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v27

    .line 540
    .local v27, "input":Landroid/renderscript/Allocation;
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v33

    .line 541
    .local v33, "output":Landroid/renderscript/Allocation;
    invoke-static/range {v35 .. v35}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v36

    .line 542
    .local v36, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 543
    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 544
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 545
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 546
    invoke-virtual/range {v35 .. v35}, Landroid/renderscript/RenderScript;->finish()V

    .line 547
    invoke-virtual/range {v27 .. v27}, Landroid/renderscript/Allocation;->destroy()V

    .line 548
    invoke-virtual/range {v33 .. v33}, Landroid/renderscript/Allocation;->destroy()V

    .line 549
    invoke-virtual/range {v36 .. v36}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 550
    invoke-virtual/range {v35 .. v35}, Landroid/renderscript/RenderScript;->destroy()V

    .line 552
    const/4 v4, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 558
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 559
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "mBufferData to Bitmap : %s ms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v12, v20, v38

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v4}, Lcom/android/camera/mpo/Bokeh_Info;->hasTouchPos()Z

    move-result v4

    if-nez v4, :cond_6

    .line 564
    div-int/lit8 v4, v26, 0x2

    div-int/lit8 v6, v25, 0x2

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    .line 570
    .local v19, "focused_depth":I
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v38

    .line 571
    move/from16 v0, v19

    int-to-float v13, v0

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/camera/processing/imagebackend/ImageInfo;->mOrientation:I

    rsub-int v4, v4, 0x168

    rem-int/lit16 v14, v4, 0x168

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .line 576
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->getDofBokehType()Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;

    move-result-object v15

    sget-object v16, Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;->DEPTHMAP:Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;

    move-object v12, v2

    .line 571
    invoke-virtual/range {v10 .. v16}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FILcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 582
    .local v34, "result":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-static/range {v34 .. v34}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->convertBitmapToJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 584
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 585
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "Bokeh processing : %s ms"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v12, v20, v38

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 602
    invoke-virtual {v10}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->surfaceDestroyed()V

    .line 603
    invoke-virtual {v10}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->release()V

    .line 604
    invoke-static {}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->clearInstance()V

    .line 606
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v6, "End to do Zeiss bokeh !!"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 611
    .end local v2    # "depth":Landroid/graphics/Bitmap;
    .end local v3    # "rgba":[I
    .end local v5    # "width":I
    .end local v9    # "height":I
    .end local v10    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .end local v11    # "image":Landroid/graphics/Bitmap;
    .end local v19    # "focused_depth":I
    .end local v20    # "end":J
    .end local v22    # "frameSize":I
    .end local v23    # "i":I
    .end local v25    # "img_height":I
    .end local v26    # "img_width":I
    .end local v27    # "input":Landroid/renderscript/Allocation;
    .end local v29    # "maximum":I
    .end local v30    # "minimum":I
    .end local v31    # "newRange":F
    .end local v32    # "oriRange":F
    .end local v33    # "output":Landroid/renderscript/Allocation;
    .end local v34    # "result":Landroid/graphics/Bitmap;
    .end local v35    # "rs":Landroid/renderscript/RenderScript;
    .end local v36    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v38    # "start":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-boolean v4, v4, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v4}, Lcom/android/camera/mpo/Bokeh_Info;->hasTouchPos()Z

    move-result v4

    if-nez v4, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    .line 615
    :cond_5
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onProcessDone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v7}, Lcom/android/camera/mpo/Bokeh_Info;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    if-eqz v24, :cond_7

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;Lcom/android/camera/processing/imagebackend/ImageInfo;)V

    .line 621
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    const-string v6, "mImageEngine done"

    invoke-interface {v4, v6}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 623
    return-void

    .line 566
    .restart local v2    # "depth":Landroid/graphics/Bitmap;
    .restart local v3    # "rgba":[I
    .restart local v5    # "width":I
    .restart local v9    # "height":I
    .restart local v10    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .restart local v11    # "image":Landroid/graphics/Bitmap;
    .restart local v20    # "end":J
    .restart local v22    # "frameSize":I
    .restart local v23    # "i":I
    .restart local v25    # "img_height":I
    .restart local v26    # "img_width":I
    .restart local v27    # "input":Landroid/renderscript/Allocation;
    .restart local v29    # "maximum":I
    .restart local v30    # "minimum":I
    .restart local v31    # "newRange":F
    .restart local v32    # "oriRange":F
    .restart local v33    # "output":Landroid/renderscript/Allocation;
    .restart local v35    # "rs":Landroid/renderscript/RenderScript;
    .restart local v36    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .restart local v38    # "start":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-wide v6, v4, Lcom/android/camera/mpo/Bokeh_Info;->mTouchX:J

    long-to-int v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-wide v6, v6, Lcom/android/camera/mpo/Bokeh_Info;->mTouchY:J

    long-to-int v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    .restart local v19    # "focused_depth":I
    goto/16 :goto_4

    .line 619
    .end local v2    # "depth":Landroid/graphics/Bitmap;
    .end local v3    # "rgba":[I
    .end local v5    # "width":I
    .end local v9    # "height":I
    .end local v10    # "engine":Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .end local v11    # "image":Landroid/graphics/Bitmap;
    .end local v19    # "focused_depth":I
    .end local v20    # "end":J
    .end local v22    # "frameSize":I
    .end local v23    # "i":I
    .end local v25    # "img_height":I
    .end local v26    # "img_width":I
    .end local v27    # "input":Landroid/renderscript/Allocation;
    .end local v29    # "maximum":I
    .end local v30    # "minimum":I
    .end local v31    # "newRange":F
    .end local v32    # "oriRange":F
    .end local v33    # "output":Landroid/renderscript/Allocation;
    .end local v35    # "rs":Landroid/renderscript/RenderScript;
    .end local v36    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local v38    # "start":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$7;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    goto :goto_5
.end method
