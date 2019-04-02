.class public Lcom/android/camera/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# static fields
.field public static final LIST_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/camera/util/Size;->width:I

    .line 53
    iput p2, p0, Lcom/android/camera/util/Size;->height:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 42
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 67
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1
    .param p1, "size"    # Landroid/util/Size;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 48
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/Size;)V
    .locals 1
    .param p1, "size"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->width:I

    .line 72
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/Size;->height:I

    .line 73
    return-void
.end method

.method public static buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "cameraSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 209
    .local v0, "cameraSize":Landroid/hardware/Camera$Size;
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-direct {v3, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0    # "cameraSize":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static convert(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v0, "converted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/camera2/portability/Size;

    .line 162
    .local v1, "size":Lcom/android/ex/camera2/portability/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v1    # "size":Lcom/android/ex/camera2/portability/Size;
    :cond_0
    return-object v0
.end method

.method public static convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;
    .locals 5
    .param p0, "sizes"    # [Landroid/util/Size;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 152
    array-length v2, p0

    new-array v0, v2, [Lcom/android/camera/util/Size;

    .line 153
    .local v0, "converted":[Lcom/android/camera/util/Size;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 154
    new-instance v2, Lcom/android/camera/util/Size;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    aget-object v4, p0, v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v2, v0, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "flatSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 176
    .local v1, "s":Lcom/android/camera/util/Size;
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v1    # "s":Lcom/android/camera/util/Size;
    :cond_0
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static of(Landroid/graphics/Rect;)Lcom/android/camera/util/Size;
    .locals 3
    .param p0, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static stringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "encodedSizes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-string v5, ","

    invoke-static {p0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "flatSizes":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 192
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 193
    .local v4, "width":I
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 194
    .local v1, "height":I
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-direct {v5, v4, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 196
    .end local v1    # "height":I
    .end local v4    # "width":I
    :cond_0
    return-object v3
.end method


# virtual methods
.method public area()J
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public asLandscape()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/camera/util/Size;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    .end local p0    # "this":Lcom/android/camera/util/Size;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/camera/util/Size;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object p0

    goto :goto_0
.end method

.method public asPortrait()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/util/Size;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    .end local p0    # "this":Lcom/android/camera/util/Size;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/camera/util/Size;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object p0

    goto :goto_0
.end method

.method public aspectRatio()F
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 133
    instance-of v2, p1, Lcom/android/camera/util/Size;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/android/camera/util/Size;

    .line 138
    .local v0, "otherSize":Lcom/android/camera/util/Size;
    iget v2, v0, Lcom/android/camera/util/Size;->width:I

    iget v3, p0, Lcom/android/camera/util/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/camera/util/Size;->height:I

    iget v3, p0, Lcom/android/camera/util/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/camera/util/Size;->height:I

    return v0
.end method

.method public toPortabilitySize()Lcom/android/ex/camera2/portability/Size;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    iget v2, p0, Lcom/android/camera/util/Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/android/camera/util/Size;

    iget v1, p0, Lcom/android/camera/util/Size;->height:I

    iget v2, p0, Lcom/android/camera/util/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/util/Size;->width:I

    return v0
.end method
