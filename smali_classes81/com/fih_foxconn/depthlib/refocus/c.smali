.class public final Lcom/fih_foxconn/depthlib/refocus/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/fih_foxconn/depthlib/refocus/f;

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lcom/fih_foxconn/depthlib/refocus/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/fih_foxconn/depthlib/refocus/f;->c:Lcom/fih_foxconn/depthlib/refocus/b;

    iget-wide v0, v0, Lcom/fih_foxconn/depthlib/refocus/b;->b:D

    double-to-float v0, v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    iget-object v0, p1, Lcom/fih_foxconn/depthlib/refocus/f;->c:Lcom/fih_foxconn/depthlib/refocus/b;

    iget-wide v0, v0, Lcom/fih_foxconn/depthlib/refocus/b;->c:D

    double-to-float v0, v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    iget-object v0, p1, Lcom/fih_foxconn/depthlib/refocus/f;->c:Lcom/fih_foxconn/depthlib/refocus/b;

    iget-wide v0, v0, Lcom/fih_foxconn/depthlib/refocus/b;->a:D

    double-to-float v0, v0

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    iput-object p1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    return-void
.end method

.method public final a(FF)V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, v1, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v3, v1

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->a:Lcom/fih_foxconn/depthlib/refocus/f;

    iget-object v1, v1, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v4, v1

    iget-object v1, v2, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    iput v0, p0, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_2

    iget-object v1, v2, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v3, v1, :cond_2

    if-ltz v4, :cond_2

    iget-object v1, v2, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v4, v1, :cond_3

    :cond_2
    const-string v1, "RGBZ getDepth"

    const-string v2, "index out of bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/fih_foxconn/depthlib/refocus/f;->b:Lcom/fih_foxconn/depthlib/refocus/d;

    iget-object v1, v2, Lcom/fih_foxconn/depthlib/refocus/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "focalDepth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndepth of field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nblur infinity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
