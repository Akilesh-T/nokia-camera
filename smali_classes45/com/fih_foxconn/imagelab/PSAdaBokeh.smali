.class public Lcom/fih_foxconn/imagelab/PSAdaBokeh;
.super Ljava/lang/Object;
.source "PSAdaBokeh.java"


# static fields
.field static final MAX_RADIUS:I = 0x19

.field static final TAG:Ljava/lang/String; = "AdaBokeh"


# instance fields
.field end:J

.field mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

.field mAllocBlur:Landroid/support/v8/renderscript/Allocation;

.field mAllocDepth:Landroid/support/v8/renderscript/Allocation;

.field mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

.field mAllocImage:Landroid/support/v8/renderscript/Allocation;

.field mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

.field mAllocOut:Landroid/support/v8/renderscript/Allocation;

.field mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

.field mContext:Landroid/content/Context;

.field mRenderScript:Landroid/support/v8/renderscript/RenderScript;

.field start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 30
    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 33
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 35
    new-instance v0, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    .line 36
    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 40
    const/16 v3, 0x1a

    .line 41
    .local v3, "margin":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v1, v5, 0x34

    .line 42
    .local v1, "imageWidthPadded":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v0, v5, 0x34

    .line 44
    .local v0, "imageHeightPadded":I
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v5, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    .line 45
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocBlur:Landroid/support/v8/renderscript/Allocation;

    .line 46
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v5, p2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    .line 47
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    .line 48
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    mul-int v7, v1, v0

    invoke-static {v5, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    .line 49
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    mul-int v7, v1, v0

    invoke-static {v5, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    .line 50
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    mul-int v7, v1, v0

    invoke-static {v5, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 52
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialization : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 55
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 56
    .local v4, "s_blur":Landroid/support/v8/renderscript/ScriptIntrinsicBlur;
    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 57
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    .line 58
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 60
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Blurring : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 63
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->set_background(Landroid/support/v8/renderscript/Allocation;)V

    .line 64
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bind_g_image_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 65
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bind_g_depth_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 66
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->bind_g_result_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 67
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    invoke-virtual {v5, v1, v0, v3}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->invoke_SetImageSize(III)V

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 69
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Blurring : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 72
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 74
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnpackImage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 77
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 79
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnpackDepth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 82
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_MarkDilate(Landroid/support/v8/renderscript/Allocation;)V

    .line 83
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_Dilate(Landroid/support/v8/renderscript/Allocation;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 85
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dilation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 88
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_Filter(Landroid/support/v8/renderscript/Allocation;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 90
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    .line 93
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;

    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/fih_foxconn/imagelab/ScriptC_AdaBlur;->forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    .line 95
    const-string v5, "AdaBokeh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PackResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 98
    .local v2, "image_out":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v2}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    .line 101
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 102
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 103
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 104
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 105
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 106
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 107
    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSAdaBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 109
    return-object v2
.end method
