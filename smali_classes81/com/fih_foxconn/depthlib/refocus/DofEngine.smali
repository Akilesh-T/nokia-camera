.class public Lcom/fih_foxconn/depthlib/refocus/DofEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;,
        Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;
    }
.end annotation


# static fields
.field static a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;


# instance fields
.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    const-string v0, "depth-improcess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->b:I

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    return-void
.end method

.method public static getInstance()Lcom/fih_foxconn/depthlib/refocus/DofEngine;
    .locals 1

    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    invoke-direct {v0}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;-><init>()V

    sput-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    :cond_0
    sget-object v0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->a:Lcom/fih_foxconn/depthlib/refocus/DofEngine;

    return-object v0
.end method

.method private native nativeInit()V
.end method

.method private native nativeRelease()V
.end method

.method private native onSurfaceDestroyed()V
.end method

.method private native process([B[B[BIIFFIII)V
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->nativeInit()V

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FILcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;)Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->c:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->d:I

    const/16 v1, 0x800

    const/16 v2, 0x800

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x800

    const/16 v3, 0x800

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/high16 v3, 0x1000000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v1, v12}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2, v13}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget v5, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->c:I

    iget v6, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->d:I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->c:I

    int-to-float v1, v1

    iget v7, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->d:I

    int-to-float v7, v7

    div-float v7, v1, v7

    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$1;->a:[I

    invoke-virtual/range {p5 .. p5}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$BOKEH_TYPE;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    const/4 v10, 0x0

    :goto_0
    sget-object v1, Lcom/fih_foxconn/depthlib/refocus/DofEngine$1;->b:[I

    invoke-virtual/range {p6 .. p6}, Lcom/fih_foxconn/depthlib/refocus/DofEngine$DEPTH_TYPE;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_1

    const/4 v11, 0x0

    :goto_1
    move-object v1, p0

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->process([B[B[BIIFFIII)V

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x800

    const/16 v3, 0x800

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->c:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->d:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :pswitch_0
    const/4 v10, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v10, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v10, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v10, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v10, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_6
    const/4 v11, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->nativeRelease()V

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 0

    invoke-direct {p0}, Lcom/fih_foxconn/depthlib/refocus/DofEngine;->onSurfaceDestroyed()V

    return-void
.end method
