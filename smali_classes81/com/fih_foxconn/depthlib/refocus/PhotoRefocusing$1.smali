.class final Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->getRefocusPreview(FF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;


# direct methods
.method constructor <init>(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    iput-object p2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_1

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->a(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I

    move-result v0

    mul-int/2addr v0, v1

    add-int v4, v0, v2

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v0}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->b(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I

    move-result-object v0

    aget v0, v0, v4

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->c(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->d(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)F

    move-result v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v5, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v5}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->e(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing$1;->b:Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;

    invoke-static {v6}, Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;->f(Lcom/fih_foxconn/depthlib/refocus/PhotoRefocusing;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v4

    aput v0, v5, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
