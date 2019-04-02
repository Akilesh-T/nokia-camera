.class public Lcom/fih_foxconn/imagelab/PSShapedBokeh;
.super Ljava/lang/Object;
.source "PSShapedBokeh.java"


# static fields
.field static final MAX_RADIUS:I = 0x64

.field static final TAG:Ljava/lang/String; = "ShapedBokeh"


# instance fields
.field end:J

.field isGeneralMask:Z

.field isInitSuccess:Z

.field mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

.field mAllocDepth:Landroid/support/v8/renderscript/Allocation;

.field mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

.field mAllocImage:Landroid/support/v8/renderscript/Allocation;

.field mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

.field mAllocIntegralPadded:Landroid/support/v8/renderscript/Allocation;

.field mAllocKernel:Landroid/support/v8/renderscript/Allocation;

.field mAllocOut:Landroid/support/v8/renderscript/Allocation;

.field mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

.field mContext:Landroid/content/Context;

.field mCurrMaxRadius:I

.field mImageHeightPadded:I

.field mImageOut:Landroid/graphics/Bitmap;

.field mImageWidthPadded:I

.field mKernelMatrix:[I

.field mMatrixHeight:I

.field mMatrixWidth:I

.field mRenderScript:Landroid/support/v8/renderscript/RenderScript;

.field mStrength:F

.field start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "maskType"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 51
    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 60
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    .line 62
    new-instance v0, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    .line 63
    iput-boolean p2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isGeneralMask:Z

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mStrength:F

    .line 65
    const/16 v0, 0x64

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mCurrMaxRadius:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isInitSuccess:Z

    .line 67
    return-void
.end method

.method private getPublicAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const-string v1, "File IO"

    const-string v2, "Directory not created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    return-object v0
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 263
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v4, "PSAdaBokeh"

    invoke-direct {p0, v4}, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->getPublicAlbumStorageDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSAdaBokeh_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 267
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 269
    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->scanMediaFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "File IO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "File IO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scanMediaFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/fih_foxconn/imagelab/PSShapedBokeh$1;

    invoke-direct {v2, p0}, Lcom/fih_foxconn/imagelab/PSShapedBokeh$1;-><init>(Lcom/fih_foxconn/imagelab/PSShapedBokeh;)V

    invoke-static {p1, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 294
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    .line 204
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 208
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 212
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 216
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 220
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 223
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 224
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 228
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 232
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    .line 234
    :cond_7
    return-void
.end method

.method public dumpDepth()V
    .locals 5

    .prologue
    .line 247
    iget v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    .local v1, "d_depth":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 249
    .local v0, "a_tmp":Landroid/support/v8/renderscript/Allocation;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    invoke-virtual {v2, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpDepth(Landroid/support/v8/renderscript/Allocation;)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 251
    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->saveBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    return-void
.end method

.method public dumpImage()V
    .locals 5

    .prologue
    .line 239
    iget v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    .local v1, "d_image":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 241
    .local v0, "a_tmp":Landroid/support/v8/renderscript/Allocation;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    invoke-virtual {v2, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->saveBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    return-void
.end method

.method public dumpIntegral()V
    .locals 5

    .prologue
    .line 255
    iget v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    .local v1, "d_integral":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 257
    .local v0, "a_tmp":Landroid/support/v8/renderscript/Allocation;
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    invoke-virtual {v2, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_DumpIntegral(Landroid/support/v8/renderscript/Allocation;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 259
    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->saveBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    return-void
.end method

.method public init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 13
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const-wide/32 v10, 0xf4240

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 71
    :cond_0
    const-string v2, "ShapedBokeh"

    const-string v3, "Size of image is not equal to size of mask!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, -0x1

    .line 132
    :goto_0
    return v2

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 77
    const/16 v1, 0x65

    .line 78
    .local v1, "margin":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, 0xca

    iput v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, 0xca

    iput v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    .line 81
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageOut:Landroid/graphics/Bitmap;

    .line 83
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageOut:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    .line 84
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v3, p2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    .line 85
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    .line 86
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    iget v5, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    mul-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    .line 87
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    iget v5, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    mul-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    .line 88
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    iget v5, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    mul-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocIntegralPadded:Landroid/support/v8/renderscript/Allocation;

    .line 89
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    iget v5, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    mul-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    .line 90
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    const/16 v5, 0x4f4d

    invoke-static {v3, v4, v5}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    .line 92
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImagePadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_image_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 93
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepthPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_depth_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 94
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocResultPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_result_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 95
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocIntegralPadded:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_integral_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 97
    const/16 v3, 0xc9

    iput v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixWidth:I

    .line 98
    const/16 v3, 0x65

    iput v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixHeight:I

    .line 99
    iget v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixWidth:I

    iget v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mKernelMatrix:[I

    .line 100
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_kernel_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 102
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageWidthPadded:I

    iget v5, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageHeightPadded:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->invoke_SetImageSize(III)V

    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 105
    const-string v3, "ShapedBokeh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialization : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 109
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_UnpackInputImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 112
    const-string v3, "ShapedBokeh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnpackImage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 116
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocDepth:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_UnpackDepth(Landroid/support/v8/renderscript/Allocation;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 119
    const-string v3, "ShapedBokeh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnpackDepth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 123
    new-instance v0, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 124
    .local v0, "launchOptions":Landroid/support/v8/renderscript/Script$LaunchOptions;
    invoke-virtual {v0, v2, v12}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 126
    iget-object v3, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4, v0}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_ComputeIntegralImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 129
    const-string v3, "ShapedBokeh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integral Image : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-boolean v12, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isInitSuccess:Z

    goto/16 :goto_0
.end method

.method public process()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    .line 175
    iget-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isInitSuccess:Z

    if-nez v0, :cond_0

    .line 176
    const-string v0, "ShapedBokeh"

    const-string v1, "Initialization was fail. Return null object."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 182
    iget-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isGeneralMask:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_FilterWithBlending(Landroid/support/v8/renderscript/Allocation;)V

    .line 187
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 188
    const-string v0, "ShapedBokeh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convolution : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 192
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_PackResultImage(Landroid/support/v8/renderscript/Allocation;)V

    .line 193
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocOut:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageOut:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 196
    const-string v0, "ShapedBokeh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v4, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mImageOut:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocImage:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->forEach_Filter(Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1
.end method

.method public setStrength(F)V
    .locals 3
    .param p1, "strength"    # F

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mStrength:F

    .line 137
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mCurrMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mStrength:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->invoke_updateMaxKernelRadius(I)V

    .line 138
    return-void
.end method

.method public updateKernel(Landroid/graphics/Bitmap;I)I
    .locals 12
    .param p1, "kernel"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # I

    .prologue
    .line 141
    iget-boolean v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->isInitSuccess:Z

    if-nez v6, :cond_0

    .line 142
    const-string v6, "ShapedBokeh"

    const-string v7, "Initialization was fail. Ignore this operation."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v6, -0x1

    .line 170
    :goto_0
    return v6

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    .line 147
    const/4 v6, 0x1

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mCurrMaxRadius:I

    .line 148
    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget v7, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mCurrMaxRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mStrength:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->invoke_updateMaxKernelRadius(I)V

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixWidth:I

    iget v7, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixHeight:I

    mul-int/2addr v6, v7

    if-ge v1, v6, :cond_1

    .line 151
    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mKernelMatrix:[I

    const/4 v7, 0x0

    aput v7, v6, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mCurrMaxRadius:I

    if-gt v1, v6, :cond_5

    .line 154
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v2, v6, 0x1

    .line 155
    .local v2, "kernel_size":I
    const/4 v6, 0x1

    invoke-static {p1, v2, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_3
    if-ge v5, v2, :cond_4

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "sum":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_4
    if-gt v4, v1, :cond_3

    .line 159
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_5
    add-int/2addr v3, v6

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 159
    :cond_2
    const/4 v6, 0x0

    goto :goto_5

    .line 161
    :cond_3
    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mKernelMatrix:[I

    iget v7, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mMatrixWidth:I

    mul-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x64

    add-int/2addr v7, v1

    sub-int/2addr v7, v5

    aput v3, v6, v7

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 153
    .end local v3    # "sum":I
    .end local v4    # "x":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "kernel_size":I
    .end local v5    # "y":I
    :cond_5
    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    iget-object v7, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mKernelMatrix:[I

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Allocation;->copyFrom([I)V

    .line 165
    iget-object v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAdaBokehScript:Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;

    iget-object v7, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->mAllocKernel:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v6, v7}, Lcom/fih_foxconn/imagelab/ScriptC_ShapedBlur;->bind_g_kernel_buffer(Landroid/support/v8/renderscript/Allocation;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    .line 168
    const-string v6, "ShapedBokeh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kernel Matrix : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->end:J

    iget-wide v10, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh;->start:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
