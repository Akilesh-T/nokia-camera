.class public final Lcom/fih_foxconn/depthlib/refocus/a;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/fih_foxconn/depthlib/refocus/e;

.field b:I

.field private c:[F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/fih_foxconn/depthlib/refocus/d;FFF)Lcom/fih_foxconn/depthlib/refocus/a;
    .locals 18

    new-instance v4, Lcom/fih_foxconn/depthlib/refocus/a;

    invoke-direct {v4}, Lcom/fih_foxconn/depthlib/refocus/a;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 p2, v0

    const-string v1, "BlurStack"

    const-string v2, "Negative depth of field"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, p2

    mul-float v1, v1, p1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v5, v1, 0x80

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v1, v1, p2

    mul-float v1, v1, p1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v6, v1, 0x80

    const/16 v1, 0x80

    new-array v1, v1, [F

    iput-object v1, v4, Lcom/fih_foxconn/depthlib/refocus/a;->c:[F

    rsub-int v1, v5, 0x80

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v3

    rsub-int v1, v6, 0x80

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v7

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    rsub-int v1, v1, 0x80

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v8

    add-int/lit8 v1, v6, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    rsub-int v1, v1, 0x80

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v9

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xff

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v2

    div-float v10, v1, v2

    add-float v1, v7, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    sub-float v1, v3, v8

    mul-float v1, v1, p3

    mul-float v12, v1, v10

    sub-float v1, v9, v7

    mul-float v1, v1, p3

    mul-float v13, v1, v10

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v1, 0x80

    if-gt v2, v1, :cond_5

    rsub-int v1, v2, 0x80

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Lcom/fih_foxconn/depthlib/refocus/d;->a(I)F

    move-result v14

    const/4 v1, 0x0

    cmpg-float v15, v14, v3

    if-gez v15, :cond_2

    sub-float v1, v3, v14

    mul-float v1, v1, p3

    mul-float/2addr v1, v10

    :cond_1
    :goto_1
    iget-object v14, v4, Lcom/fih_foxconn/depthlib/refocus/a;->c:[F

    add-int/lit8 v15, v2, -0x1

    const/high16 v16, 0x42c80000    # 100.0f

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v14, v15

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    cmpl-float v15, v14, v7

    if-lez v15, :cond_3

    sub-float v1, v14, v7

    mul-float v1, v1, p3

    mul-float/2addr v1, v10

    goto :goto_1

    :cond_3
    cmpl-float v15, v14, v11

    if-lez v15, :cond_4

    sub-float v1, v14, v11

    mul-float/2addr v1, v13

    sub-float v14, v9, v11

    div-float/2addr v1, v14

    goto :goto_1

    :cond_4
    cmpg-float v15, v14, v11

    if-gez v15, :cond_1

    sub-float v1, v11, v14

    mul-float/2addr v1, v12

    sub-float v14, v11, v8

    div-float/2addr v1, v14

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {v4, v2}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, v4, Lcom/fih_foxconn/depthlib/refocus/a;->c:[F

    array-length v1, v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    if-eq v6, v1, :cond_7

    add-int/lit8 v2, v6, -0x1

    new-instance v1, Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-direct {v1, v2}, Lcom/fih_foxconn/depthlib/refocus/e;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v1

    add-float/2addr v1, v7

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_2
    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v4, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fih_foxconn/depthlib/refocus/e;

    iput v3, v1, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    move v1, v3

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-direct {v1, v3}, Lcom/fih_foxconn/depthlib/refocus/e;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v1

    add-float/2addr v1, v7

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_7
    invoke-direct {v4, v5, v7}, Lcom/fih_foxconn/depthlib/refocus/a;->a(IF)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v7, v1, v2

    new-array v1, v7, [Lcom/fih_foxconn/depthlib/refocus/e;

    iput-object v1, v4, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v4, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v7, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v2

    iget-object v9, v4, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fih_foxconn/depthlib/refocus/e;

    aput-object v1, v9, v2

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_9

    iget-object v1, v4, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    new-instance v9, Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-direct {v9, v5, v6}, Lcom/fih_foxconn/depthlib/refocus/e;-><init>(II)V

    aput-object v9, v1, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v2, v1

    iget-object v9, v4, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fih_foxconn/depthlib/refocus/e;

    aput-object v1, v9, v2

    goto :goto_4

    :cond_a
    return-object v4
.end method

.method private a(IF)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fih_foxconn/depthlib/refocus/e;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x80

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/a;->c:[F

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-ne p1, v4, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-direct {v0, v2}, Lcom/fih_foxconn/depthlib/refocus/e;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v0

    add-float/2addr v0, p2

    move v5, v0

    move v0, v2

    move v2, v5

    :goto_1
    if-ge v0, v4, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/depthlib/refocus/e;

    iput v3, v0, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    move v0, v3

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/fih_foxconn/depthlib/refocus/e;

    invoke-direct {v0, v3}, Lcom/fih_foxconn/depthlib/refocus/e;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v0

    add-float/2addr v0, p2

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    iget-object v0, p0, Lcom/fih_foxconn/depthlib/refocus/a;->c:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "disparity range: 128, 1\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "focus disparity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    iget v2, p0, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "num of layers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "focus layer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fih_foxconn/depthlib/refocus/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/fih_foxconn/depthlib/refocus/e;->a:I

    iget-object v3, p0, Lcom/fih_foxconn/depthlib/refocus/a;->a:[Lcom/fih_foxconn/depthlib/refocus/e;

    aget-object v3, v3, v0

    iget v4, v3, Lcom/fih_foxconn/depthlib/refocus/e;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nlayer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " num of disparities "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-lt v2, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "layer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " disparity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " disk radius "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/fih_foxconn/depthlib/refocus/a;->a(I)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
