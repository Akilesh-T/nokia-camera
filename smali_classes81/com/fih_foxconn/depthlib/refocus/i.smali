.class public final Lcom/fih_foxconn/depthlib/refocus/i;
.super Ljava/lang/Object;


# static fields
.field private static final q:I


# instance fields
.field a:Z

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Bitmap;

.field public d:Landroid/support/v8/renderscript/Allocation;

.field public e:Landroid/support/v8/renderscript/Allocation;

.field public f:Landroid/support/v8/renderscript/Allocation;

.field public g:Landroid/support/v8/renderscript/Allocation;

.field public h:Landroid/support/v8/renderscript/Allocation;

.field public i:Landroid/support/v8/renderscript/Allocation;

.field public j:I

.field public k:I

.field public l:I

.field protected m:Lcom/fih_foxconn/depthlib/refocus/k;

.field protected n:I

.field protected o:Landroid/support/v8/renderscript/RenderScript;

.field protected p:Lcom/fih_foxconn/depthlib/refocus/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x65

    sput v0, Lcom/fih_foxconn/depthlib/refocus/i;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->a:Z

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    return-void
.end method

.method private static a(ILcom/fih_foxconn/depthlib/refocus/a;)I
    .locals 1

    invoke-virtual {p1, p0}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v0, p1}, Lcom/fih_foxconn/depthlib/refocus/j;->a(I)V

    return-void
.end method

.method private a(Lcom/fih_foxconn/depthlib/refocus/e;)V
    .locals 3

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget v1, p1, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    iget v2, p1, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->a(II)V

    return-void
.end method

.method private c(Lcom/fih_foxconn/depthlib/refocus/a;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p1, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Lcom/fih_foxconn/depthlib/refocus/e;)V

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    invoke-static {v2, p1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(ILcom/fih_foxconn/depthlib/refocus/a;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fih_foxconn/depthlib/refocus/i;->a(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/fih_foxconn/depthlib/refocus/j;->c(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/fih_foxconn/depthlib/refocus/j;->e(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-boolean v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v2, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->b(I)V

    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    invoke-virtual {v2, v1, v5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/fih_foxconn/depthlib/refocus/j;->g(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v2, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->b(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->i(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    return v5
.end method


# virtual methods
.method protected final a(Lcom/fih_foxconn/depthlib/refocus/a;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p1, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p1, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    if-lt v0, v1, :cond_1

    iget-object v1, p1, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(Lcom/fih_foxconn/depthlib/refocus/e;)V

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    invoke-static {v1, p1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(ILcom/fih_foxconn/depthlib/refocus/a;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fih_foxconn/depthlib/refocus/i;->a(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->c(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->d(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-boolean v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v1, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->b(I)V

    new-instance v1, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v1}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->f(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/fih_foxconn/depthlib/refocus/j;->h(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v1, v4}, Lcom/fih_foxconn/depthlib/refocus/j;->b(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/fih_foxconn/depthlib/refocus/i;->c(Lcom/fih_foxconn/depthlib/refocus/a;)Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->e:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->j(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->e:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->e:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->f:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->g:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->h:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->i:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    invoke-virtual {v0}, Lcom/fih_foxconn/depthlib/refocus/j;->destroy()V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/fih_foxconn/depthlib/refocus/a;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    sget v0, Lcom/fih_foxconn/depthlib/refocus/i;->q:I

    add-int/lit8 v0, v0, 0x1

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->c:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->e:Landroid/support/v8/renderscript/Allocation;

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->l:I

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->j:I

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->k:I

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->j:I

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->k:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->f:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->g:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->h:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->i:Landroid/support/v8/renderscript/Allocation;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->f:Landroid/support/v8/renderscript/Allocation;

    iput-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/j;->a:Landroid/support/v8/renderscript/Allocation;

    if-nez v1, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->g:Landroid/support/v8/renderscript/Allocation;

    iput-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/j;->b:Landroid/support/v8/renderscript/Allocation;

    if-nez v1, :cond_1

    invoke-virtual {v0, v4, v6}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->h:Landroid/support/v8/renderscript/Allocation;

    iput-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/j;->d:Landroid/support/v8/renderscript/Allocation;

    if-nez v1, :cond_2

    invoke-virtual {v0, v4, v8}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_2
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->i:Landroid/support/v8/renderscript/Allocation;

    iput-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/j;->c:Landroid/support/v8/renderscript/Allocation;

    if-nez v1, :cond_3

    invoke-virtual {v0, v4, v7}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_3
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->j:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->k:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->l:I

    iget v4, p2, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    iget-object v5, p2, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    iget v5, p2, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    iget-object v6, p2, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v5, v6, v5

    iget v5, v5, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/refocus/j;->a(IIIII)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->b(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->a(Landroid/support/v8/renderscript/Allocation;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    return-void

    :cond_0
    invoke-virtual {v0, v1, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v6}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1, v8}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v7}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_3
.end method

.method public final b(Lcom/fih_foxconn/depthlib/refocus/a;)V
    .locals 7

    const/4 v5, 0x7

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/k;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->o:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/k;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->m:Lcom/fih_foxconn/depthlib/refocus/k;

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->m:Lcom/fih_foxconn/depthlib/refocus/k;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/fih_foxconn/depthlib/refocus/k;->a(II)V

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->m:Lcom/fih_foxconn/depthlib/refocus/k;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/fih_foxconn/depthlib/refocus/k;->b(II)V

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->m:Lcom/fih_foxconn/depthlib/refocus/k;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/fih_foxconn/depthlib/refocus/k;->c(II)V

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->n:I

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->m:Lcom/fih_foxconn/depthlib/refocus/k;

    iput-object v1, v0, Lcom/fih_foxconn/depthlib/refocus/j;->e:Lcom/fih_foxconn/depthlib/refocus/k;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    :goto_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->j:I

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/i;->k:I

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/i;->l:I

    iget v4, p1, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    iget-object v5, p1, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    iget v5, p1, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    iget-object v6, p1, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v5, v6, v5

    iget v5, v5, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/depthlib/refocus/j;->a(IIIII)V

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/i;->p:Lcom/fih_foxconn/depthlib/refocus/j;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/i;->d:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/j;->b(Landroid/support/v8/renderscript/Allocation;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/fih_foxconn/depthlib/refocus/k;->getAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/fih_foxconn/depthlib/refocus/j;->bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    goto :goto_1
.end method
