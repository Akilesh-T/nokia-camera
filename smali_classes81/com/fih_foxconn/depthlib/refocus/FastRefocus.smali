.class public Lcom/fih_foxconn/depthlib/refocus/FastRefocus;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "FastRefocus"


# instance fields
.field private A:Landroid/support/v8/renderscript/Allocation;

.field private B:S

.field private C:I

.field private D:F

.field private E:Z

.field private F:J

.field private G:J

.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/support/v8/renderscript/RenderScript;

.field private h:Lcom/fih_foxconn/depthlib/b;

.field private i:[I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/support/v8/renderscript/Allocation;

.field private r:Landroid/support/v8/renderscript/Allocation;

.field private s:Landroid/support/v8/renderscript/Allocation;

.field private t:Landroid/support/v8/renderscript/Allocation;

.field private u:Landroid/support/v8/renderscript/Allocation;

.field private v:Landroid/support/v8/renderscript/Allocation;

.field private w:Landroid/support/v8/renderscript/Allocation;

.field private x:Landroid/support/v8/renderscript/Allocation;

.field private y:Landroid/support/v8/renderscript/Allocation;

.field private z:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    new-instance v0, Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/b;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->D:F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->C:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->G:J

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->G:J

    const-string v0, "%s : %s ms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->G:J

    iget-wide v6, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDepth(FF)S
    .locals 4

    const/4 v0, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v3

    if-gez v1, :cond_0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPreviewUnchanged()Landroid/graphics/Bitmap;
    .locals 2

    iget-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-nez v0, :cond_0

    const-string v0, "FastRefocus"

    const-string v1, "Initialization was fail. Return null object."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->e:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->m:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/high16 v6, 0x44480000    # 800.0f

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    if-le v2, v1, :cond_4

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    iput v1, v3, Landroid/graphics/Point;->x:I

    const/16 v1, 0x320

    iput v1, v3, Landroid/graphics/Point;->y:I

    :goto_1
    iget v1, v3, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->m:I

    iget v1, v3, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->n:I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->m:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->m:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->m:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->e:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->f:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->r:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->t:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicResize;

    move-result-object v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->r:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->r:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->s:Landroid/support/v8/renderscript/Allocation;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->r:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->s:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit16 v1, v1, 0x192

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, 0x192

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    const/16 v1, 0x191

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->j:I

    const/16 v1, 0xc9

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->k:I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->j:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->k:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->i:[I

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->v:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->w:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->x:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->z:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->A:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->y:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->g:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->j:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->k:I

    mul-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->u:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->v:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->a:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_5

    invoke-virtual {v1, v5, v7}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_2
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->w:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->b:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_6

    const/4 v2, 0x4

    invoke-virtual {v1, v5, v2}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_3
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->x:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->c:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_7

    const/4 v2, 0x5

    invoke-virtual {v1, v5, v2}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_4
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->z:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->d:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_8

    const/4 v2, 0x6

    invoke-virtual {v1, v5, v2}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_5
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->A:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->e:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_9

    const/4 v2, 0x7

    invoke-virtual {v1, v5, v2}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_6
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->y:Landroid/support/v8/renderscript/Allocation;

    iput-object v2, v1, Lcom/fih_foxconn/depthlib/b;->f:Landroid/support/v8/renderscript/Allocation;

    if-nez v2, :cond_a

    const/16 v2, 0x8

    invoke-virtual {v1, v5, v2}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_7
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->u:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/b;->a(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->o:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->p:I

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->a(II)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/b;->b(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->r:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/b;->c(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->s:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/b;->d(Landroid/support/v8/renderscript/Allocation;)V

    const/4 v1, -0x1

    iput-short v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->B:S

    iput-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x320

    iput v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    iput v1, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1, v2, v7}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_4

    :cond_8
    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_6

    :cond_a
    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/depthlib/b;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_7
.end method

.method public process()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-nez v1, :cond_0

    const-string v1, "FastRefocus"

    const-string v2, "Initialization was fail. Return null object."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    iget-short v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->B:S

    if-gez v1, :cond_1

    const-string v1, "FastRefocus"

    const-string v2, "No depth value was set. Return null object."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-short v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->B:S

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->a(S)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->e(Landroid/support/v8/renderscript/Allocation;)V

    new-instance v0, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2, v0}, Lcom/fih_foxconn/depthlib/b;->a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2, v0}, Lcom/fih_foxconn/depthlib/b;->b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->f(Landroid/support/v8/renderscript/Allocation;)V

    const-string v0, "Integral"

    invoke-direct {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->g(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->q:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->h(Landroid/support/v8/renderscript/Allocation;)V

    const-string v0, "Convolution"

    invoke-direct {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->t:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/b;->i(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->t:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    const-string v0, "PackResult"

    invoke-direct {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setTargetDepth(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->B:S

    return-void
.end method

.method public updateKernel(Landroid/graphics/Bitmap;I)I
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->E:Z

    if-nez v0, :cond_0

    const-string v0, "FastRefocus"

    const-string v1, "Initialization was fail. Ignore this operation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->F:J

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0xc8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->C:I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->C:I

    int-to-float v2, v2

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->D:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/fih_foxconn/depthlib/b;->a(I)V

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->j:I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->k:I

    mul-int/2addr v2, v4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->i:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->C:I

    if-gt v0, v2, :cond_5

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v7, v2, 0x1

    invoke-static {p1, v7, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    move v6, v1

    :goto_3
    if-ge v6, v7, :cond_4

    move v4, v1

    move v5, v1

    :goto_4
    if-gt v4, v0, :cond_3

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    :goto_5
    add-int/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_2
    move v2, v1

    goto :goto_5

    :cond_3
    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->i:[I

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->j:I

    mul-int/2addr v4, v0

    add-int/lit16 v4, v4, 0xc8

    add-int/2addr v4, v0

    sub-int/2addr v4, v6

    aput v5, v2, v4

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->u:Landroid/support/v8/renderscript/Allocation;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->i:[I

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->copyFrom([I)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->h:Lcom/fih_foxconn/depthlib/b;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->u:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v2}, Lcom/fih_foxconn/depthlib/b;->a(Landroid/support/v8/renderscript/Allocation;)V

    const-string v0, "Kernel Matrix"

    invoke-direct {p0, v0}, Lcom/fih_foxconn/depthlib/refocus/FastRefocus;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
