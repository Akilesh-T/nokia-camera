.class final Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusRealSizeCPU(FF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;


# direct methods
.method constructor <init>(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    iput-object p2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->b:I

    iput p4, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_2

    move v0, v2

    :goto_1
    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->b:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->b:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v4}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->g(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I

    move-result-object v4

    aget v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->c(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I

    move-result v5

    sub-int v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->d(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->c:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v4}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->h(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$3;->d:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->i(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method
