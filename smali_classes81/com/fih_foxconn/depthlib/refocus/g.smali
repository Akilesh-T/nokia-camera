.class public final Lcom/fih_foxconn/depthlib/refocus/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fih_foxconn/depthlib/refocus/d;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fih_foxconn/depthlib/refocus/g;->a:F

    iput p2, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 5

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/g;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/g;->a:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final a(F)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xff

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/g;->a:F

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    mul-float/2addr v3, v4

    div-float/2addr v3, p1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/g;->b:F

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/g;->a:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
