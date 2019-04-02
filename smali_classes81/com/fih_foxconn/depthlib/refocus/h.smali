.class public final Lcom/fih_foxconn/depthlib/refocus/h;
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

    iput p1, p0, Lcom/fih_foxconn/depthlib/refocus/h;->a:F

    iput p2, p0, Lcom/fih_foxconn/depthlib/refocus/h;->b:F

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 4

    iget v0, p0, Lcom/fih_foxconn/depthlib/refocus/h;->a:F

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/h;->b:F

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/h;->a:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final a(F)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xff

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/h;->a:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/fih_foxconn/depthlib/refocus/h;->b:F

    iget v4, p0, Lcom/fih_foxconn/depthlib/refocus/h;->a:F

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
