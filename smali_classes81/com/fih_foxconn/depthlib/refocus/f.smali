.class public final Lcom/fih_foxconn/depthlib/refocus/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/fih_foxconn/depthlib/refocus/d;

.field c:Lcom/fih_foxconn/depthlib/refocus/b;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/g;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/g;-><init>(FF)V

    new-instance v1, Lcom/fih_foxconn/depthlib/refocus/b;

    const-string v2, "RangeInverse"

    invoke-direct {v1, v2, v0}, Lcom/fih_foxconn/depthlib/refocus/b;-><init>(Ljava/lang/String;Lcom/fih_foxconn/depthlib/refocus/d;)V

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/f;->c:Lcom/fih_foxconn/depthlib/refocus/b;

    invoke-static {p1, p2}, Lcom/fih_foxconn/depthlib/refocus/f;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/f;->c:Lcom/fih_foxconn/depthlib/refocus/b;

    iget-object v0, v0, Lcom/fih_foxconn/depthlib/refocus/b;->d:Lcom/fih_foxconn/depthlib/refocus/d;

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v1, v4, v8

    new-array v2, v1, [I

    mul-int v1, v4, v8

    new-array v10, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    const v5, 0xffffff

    and-int/2addr v3, v5

    aget v5, v10, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v17

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 p0, v17

    goto :goto_0
.end method
