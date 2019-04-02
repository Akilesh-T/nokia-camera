.class public Lcom/fih_foxconn/imagelab/env/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fih_foxconn/imagelab/env/Size;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x6ab7b04cf27fbe29L


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    .line 39
    iput p2, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    .line 45
    return-void
.end method

.method public static final dimensionsAsString(II)Ljava/lang/String;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRotatedSize(Lcom/fih_foxconn/imagelab/env/Size;I)Lcom/fih_foxconn/imagelab/env/Size;
    .locals 3
    .param p0, "size"    # Lcom/fih_foxconn/imagelab/env/Size;
    .param p1, "rotation"    # I

    .prologue
    .line 54
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Size;

    iget v1, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    iget v2, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Size;-><init>(II)V

    move-object p0, v0

    .line 58
    .end local p0    # "size":Lcom/fih_foxconn/imagelab/env/Size;
    :cond_0
    return-object p0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/env/Size;
    .locals 7
    .param p0, "sizeString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v4

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v5, "x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "components":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 72
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 73
    .local v3, "width":I
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "height":I
    new-instance v5, Lcom/fih_foxconn/imagelab/env/Size;

    invoke-direct {v5, v3, v2}, Lcom/fih_foxconn/imagelab/env/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 75
    .end local v2    # "height":I
    .end local v3    # "width":I
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static sizeListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/imagelab/env/Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/fih_foxconn/imagelab/env/Size;>;"
    const-string v1, ""

    .line 99
    .local v1, "sizesString":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 100
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fih_foxconn/imagelab/env/Size;

    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/env/Size;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fih_foxconn/imagelab/env/Size;

    invoke-virtual {v2}, Lcom/fih_foxconn/imagelab/env/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static sizeStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "sizes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fih_foxconn/imagelab/env/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v3, "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/fih_foxconn/imagelab/env/Size;>;"
    if-eqz p0, :cond_1

    .line 86
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "pairs":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 88
    .local v0, "pair":Ljava/lang/String;
    invoke-static {v0}, Lcom/fih_foxconn/imagelab/env/Size;->parseFromString(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/env/Size;

    move-result-object v2

    .line 89
    .local v2, "size":Lcom/fih_foxconn/imagelab/env/Size;
    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "pair":Ljava/lang/String;
    .end local v1    # "pairs":[Ljava/lang/String;
    .end local v2    # "size":Lcom/fih_foxconn/imagelab/env/Size;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public final aspectRatio()F
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public compareTo(Lcom/fih_foxconn/imagelab/env/Size;)I
    .locals 3
    .param p1, "other"    # Lcom/fih_foxconn/imagelab/env/Size;

    .prologue
    .line 114
    iget v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    iget v2, p1, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/fih_foxconn/imagelab/env/Size;

    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/env/Size;->compareTo(Lcom/fih_foxconn/imagelab/env/Size;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    instance-of v2, p1, Lcom/fih_foxconn/imagelab/env/Size;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/fih_foxconn/imagelab/env/Size;

    .line 128
    .local v0, "otherSize":Lcom/fih_foxconn/imagelab/env/Size;
    iget v2, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    iget v3, v0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    iget v3, v0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/fih_foxconn/imagelab/env/Size;->width:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/env/Size;->height:I

    invoke-static {v0, v1}, Lcom/fih_foxconn/imagelab/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
