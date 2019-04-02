.class public Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:[B

.field private e:[B

.field private f:F

.field private g:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "depth-improcess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->d:[B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->e:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private native dumpResult([BIIFFFF)Z
.end method

.method private native init(Z)Z
.end method

.method private native process()Z
.end method

.method private native updateTexture([B[BII)V
.end method


# virtual methods
.method public changeState(Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;)V
    .locals 5

    const/16 v4, 0x800

    const/16 v3, 0x400

    const/16 v2, 0x200

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->g:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->g:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$1;->a:[I

    invoke-virtual {p1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a(I)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->d:[B

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->e:[B

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->updateTexture([B[BII)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a(I)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->d:[B

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->e:[B

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->updateTexture([B[BII)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a(I)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->d:[B

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->e:[B

    invoke-direct {p0, v0, v1, v4, v4}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->updateTexture([B[BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public native getBokehRadius()F
.end method

.method public getDepth(II)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    goto :goto_0
.end method

.method public getResult()Landroid/graphics/Bitmap;
    .locals 9

    const/16 v2, 0x800

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;->EXPORT:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->changeState(Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->process(Landroid/graphics/Bitmap;IIFFFFZ)Z

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;->PREVIEW:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->changeState(Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getResult(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/16 v2, 0x800

    invoke-static {p1, v2, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v2, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {p0, v7, v8, v2, v2}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->updateTexture([B[BII)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->dumpResult([BIIFFFF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v10, v8, v9, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->init(Z)Z

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-direct {p0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->process()Z

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->f:F

    const/4 v1, -0x1

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->resize(IIFI)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->init()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setPreviewType(I)V

    invoke-virtual {p0, v1}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->setBokehType(I)V

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;->PREVIEW:Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->changeState(Lcom/fih_foxconn/depthlib/refocus/GLES3DoF$STATE;)V

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;IIFFFFZ)Z
    .locals 8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->dumpResult([BIIFFFF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz p8, :cond_1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->c:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native resize(IIFI)V
.end method

.method public native setBokehRadius(F)V
.end method

.method public native setBokehType(I)V
.end method

.method public native setDepthType(I)V
.end method

.method public native setFocusRange(F)V
.end method

.method public setInputs(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/GLES3DoF;->f:F

    return-void
.end method

.method public native setPreviewType(I)V
.end method

.method public native setTargetDepth(F)V
.end method

.method public native updateTextureSize(II)V
.end method
