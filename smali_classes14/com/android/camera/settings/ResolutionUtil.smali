.class public Lcom/android/camera/settings/ResolutionUtil;
.super Ljava/lang/Object;
.source "ResolutionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

.field public static final ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

.field public static final ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

.field public static final ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

.field public static final ASPECT_RATIO_TOLERANCE:D = 0.05

.field public static final NEXUS_5_LARGE_16_BY_9:Ljava/lang/String; = "1836x3264"

.field public static final NEXUS_5_LARGE_16_BY_9_ASPECT_RATIO:F = 1.7777778f

.field public static NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size; = null

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final resolutionThreshold:J = 0x1e00000L

.field private static sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

.field private static sDesiredAspectRatios:[Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ResolutionUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 59
    new-instance v0, Lcom/android/camera/exif/Rational;

    const-wide/16 v2, 0x12

    const-wide/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

    .line 60
    new-instance v0, Lcom/android/camera/exif/Rational;

    const-wide/16 v2, 0x10

    const-wide/16 v4, 0x9

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    .line 61
    new-instance v0, Lcom/android/camera/exif/Rational;

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    .line 62
    new-instance v0, Lcom/android/camera/exif/Rational;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

    .line 68
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0xcc0

    const/16 v2, 0x72c

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    .line 75
    new-array v0, v6, [Ljava/lang/Float;

    const v1, 0x3fe38e39

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x3faaaaab

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v8

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    .line 79
    new-array v0, v6, [Lcom/android/camera/util/Size;

    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/util/Size;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static area(Lcom/android/camera/util/Size;)I
    .locals 2
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static aspectRatioDenominator(Lcom/android/camera/util/Size;)I
    .locals 6
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 343
    .local v3, "width":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 344
    .local v2, "height":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 345
    .local v1, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    div-int v0, v4, v5

    .line 346
    .local v0, "denominator":I
    return v0
.end method

.method public static aspectRatioDescription(Lcom/android/camera/util/Size;)Ljava/lang/String;
    .locals 3
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 286
    invoke-static {p0}, Lcom/android/camera/settings/ResolutionUtil;->reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 287
    .local v0, "aspectRatio":Lcom/android/camera/util/Size;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static aspectRatioNumerator(Lcom/android/camera/util/Size;)I
    .locals 2
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 313
    invoke-static {p0}, Lcom/android/camera/settings/ResolutionUtil;->reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 314
    .local v0, "aspectRatio":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    return v1
.end method

.method public static filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "blacklistString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .prologue
    .line 473
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "blacklistStringArray":[Ljava/lang/String;
    array-length v4, v0

    if-nez v4, :cond_0

    .line 485
    .end local p0    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :goto_0
    return-object p0

    .line 478
    .restart local p0    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v1, "blacklistedSizes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v2, "newSizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 481
    .local v3, "size":Lcom/android/camera/util/Size;
    invoke-static {v3, v1}, Lcom/android/camera/settings/ResolutionUtil;->isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 482
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "size":Lcom/android/camera/util/Size;
    :cond_2
    move-object p0, v2

    .line 485
    goto :goto_0
.end method

.method private static fuzzAspectRatio(F)F
    .locals 8
    .param p0, "aspectRatio"    # F

    .prologue
    .line 230
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 231
    .local v0, "desiredAspectRatio":F
    sub-float v4, p0, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 235
    .end local v0    # "desiredAspectRatio":F
    :goto_1
    return v0

    .line 230
    .restart local v0    # "desiredAspectRatio":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "desiredAspectRatio":F
    :cond_1
    move v0, p0

    .line 235
    goto :goto_1
.end method

.method public static getApproximateSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 5
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 326
    invoke-static {p0}, Lcom/android/camera/settings/ResolutionUtil;->reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 327
    .local v0, "aspectRatio":Lcom/android/camera/util/Size;
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/settings/ResolutionUtil;->fuzzAspectRatio(F)F

    move-result v1

    .line 328
    .local v1, "fuzzy":F
    sget-object v3, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 329
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 330
    sget-object v3, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatioSizes:[Lcom/android/camera/util/Size;

    aget-object v0, v3, v2

    .line 332
    :cond_0
    return-object v0
.end method

.method public static getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;
    .locals 10
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    .line 357
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    .line 358
    .local v1, "height":I
    move v2, v3

    .line 359
    .local v2, "numerator":I
    move v0, v1

    .line 360
    .local v0, "denominator":I
    if-le v1, v3, :cond_0

    .line 361
    move v2, v1

    .line 362
    move v0, v3

    .line 364
    :cond_0
    new-instance v4, Lcom/android/camera/exif/Rational;

    int-to-long v6, v2

    int-to-long v8, v0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 455
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 456
    .local v1, "wm":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 459
    :cond_0
    return-object v0
.end method

.method public static getDisplayableSizesFromSupported(Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .param p1, "isBackCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {p0, p1}, Lcom/android/camera/settings/ResolutionUtil;->parseAvailableSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "buckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v4, "sortedDesiredAspectRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    iget-object v6, v6, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 147
    .local v1, "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    iget-object v0, v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 148
    .local v0, "aspectRatio":Ljava/lang/Float;
    sget-object v7, Lcom/android/camera/settings/ResolutionUtil;->sDesiredAspectRatios:[Ljava/lang/Float;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "aspectRatio":Ljava/lang/Float;
    .end local v1    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 156
    .local v5, "targetRatio":Ljava/lang/Float;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 157
    .restart local v1    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    iget-object v0, v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 158
    .local v0, "aspectRatio":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    .line 159
    iget-object v8, v1, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-static {v8}, Lcom/android/camera/settings/ResolutionUtil;->pickUpToThree(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 163
    .end local v0    # "aspectRatio":Ljava/lang/Number;
    .end local v1    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    .end local v5    # "targetRatio":Ljava/lang/Float;
    :cond_4
    return-object v3
.end method

.method public static getFilterLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;
    .locals 12
    .param p0, "desiredAspectRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/exif/Rational;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v6, 0x0

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "maxPixelNumNoAspect":I
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-direct {v3, v6, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 425
    .local v3, "maxSize":Lcom/android/camera/util/Size;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 426
    .local v5, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    mul-int v4, v7, v8

    .line 427
    .local v4, "pixelNum":I
    if-le v4, v1, :cond_0

    .line 428
    move v1, v4

    .line 429
    move-object v3, v5

    goto :goto_0

    .line 436
    .end local v4    # "pixelNum":I
    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_1
    const/4 v2, 0x0

    .line 437
    .local v2, "maxPixelNumWithAspect":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 438
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 440
    .local v0, "aspectRatio":Lcom/android/camera/exif/Rational;
    invoke-static {v0, p0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    mul-int v4, v7, v8

    .line 444
    .restart local v4    # "pixelNum":I
    if-le v4, v2, :cond_2

    int-to-long v8, v4

    const-wide/32 v10, 0x1e00000

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 445
    move v2, v4

    .line 446
    move-object v3, v5

    goto :goto_1

    .line 450
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v4    # "pixelNum":I
    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_3
    return-object v3
.end method

.method public static getLargestPictureSize(Lcom/android/camera/exif/Rational;Ljava/util/List;)Lcom/android/camera/util/Size;
    .locals 9
    .param p0, "desiredAspectRatio"    # Lcom/android/camera/exif/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/exif/Rational;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .prologue
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v6, 0x0

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "maxPixelNumNoAspect":I
    new-instance v3, Lcom/android/camera/util/Size;

    invoke-direct {v3, v6, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 389
    .local v3, "maxSize":Lcom/android/camera/util/Size;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 390
    .local v5, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    mul-int v4, v7, v8

    .line 391
    .local v4, "pixelNum":I
    if-le v4, v1, :cond_0

    .line 392
    move v1, v4

    .line 393
    move-object v3, v5

    goto :goto_0

    .line 400
    .end local v4    # "pixelNum":I
    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_1
    const/4 v2, 0x0

    .line 401
    .local v2, "maxPixelNumWithAspect":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/Size;

    .line 402
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    invoke-static {v5}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v0

    .line 404
    .local v0, "aspectRatio":Lcom/android/camera/exif/Rational;
    invoke-static {v0, p0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 407
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    mul-int v4, v7, v8

    .line 408
    .restart local v4    # "pixelNum":I
    if-le v4, v2, :cond_2

    .line 409
    move v2, v4

    .line 410
    move-object v3, v5

    goto :goto_1

    .line 414
    .end local v0    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v4    # "pixelNum":I
    .end local v5    # "size":Lcom/android/camera/util/Size;
    :cond_3
    return-object v3
.end method

.method public static hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z
    .locals 4
    .param p0, "ar1"    # Lcom/android/camera/exif/Rational;
    .param p1, "ar2"    # Lcom/android/camera/exif/Rational;

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is16by9AspectRatio(Lcom/android/camera/util/Size;)Z
    .locals 4
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v1, 0x0

    .line 511
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 517
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 520
    .local v0, "aspectRatio":F
    :goto_1
    const v2, 0x3fe38e39

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "aspectRatio":F
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_1
.end method

.method public static isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z
    .locals 3
    .param p0, "size"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "blacklistString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 497
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "blacklistStringArray":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 499
    const/4 v2, 0x0

    .line 502
    :goto_0
    return v2

    .line 501
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 502
    .local v1, "blacklistedSizes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/android/camera/settings/ResolutionUtil;->isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isBlackListed(Lcom/android/camera/util/Size;Ljava/util/Set;)Z
    .locals 3
    .param p0, "size"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Size;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "blacklistedSizes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "sizeStr":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static parseAvailableSizes(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .param p1, "isBackCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "aspectRatioToBuckets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 252
    .local v3, "size":Lcom/android/camera/util/Size;
    invoke-static {v3}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x1e00000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 253
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 256
    .local v0, "aspectRatio":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Lcom/android/camera/settings/ResolutionUtil;->fuzzAspectRatio(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 257
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .line 258
    .local v2, "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    if-nez v2, :cond_1

    .line 259
    new-instance v2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    .end local v2    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;-><init>(Lcom/android/camera/settings/ResolutionUtil$1;)V

    .line 260
    .restart local v2    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    iput-object v0, v2, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->aspectRatio:Ljava/lang/Float;

    .line 261
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V

    goto :goto_0

    .line 265
    .end local v0    # "aspectRatio":Ljava/lang/Float;
    .end local v2    # "bucket":Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;
    .end local v3    # "size":Lcom/android/camera/util/Size;
    :cond_2
    sget-boolean v5, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 266
    const v5, 0x3fe38e39

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;

    sget-object v6, Lcom/android/camera/settings/ResolutionUtil;->NEXUS_5_LARGE_16_BY_9_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual {v5, v6}, Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;->add(Lcom/android/camera/util/Size;)V

    .line 268
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v4, "sortedBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/settings/ResolutionUtil$ResolutionBucket;>;"
    new-instance v5, Lcom/android/camera/settings/ResolutionUtil$1;

    invoke-direct {v5}, Lcom/android/camera/settings/ResolutionUtil$1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    return-object v4
.end method

.method private static pickUpToThree(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v12, 0x3

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 191
    .local v0, "largest":Lcom/android/camera/util/Size;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    move-object v1, v0

    .line 193
    .local v1, "lastSize":Lcom/android/camera/util/Size;
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getMinimunPictureSize()Lcom/android/camera/util/Size;

    move-result-object v2

    .line 194
    .local v2, "mimimunSize":Lcom/android/camera/util/Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/Size;

    .line 195
    .local v4, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 196
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v0}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v10

    int-to-double v10, v10

    mul-double v6, v8, v10

    .line 197
    .local v6, "targetArea":D
    invoke-static {v4}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v6

    if-gez v8, :cond_1

    .line 201
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 202
    invoke-static {v1}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v8

    int-to-double v8, v8

    sub-double v8, v6, v8

    invoke-static {v4}, Lcom/android/camera/settings/ResolutionUtil;->area(Lcom/android/camera/util/Size;)I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v10, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 203
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    :goto_0
    move-object v1, v4

    .line 209
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 215
    .end local v4    # "size":Lcom/android/camera/util/Size;
    .end local v6    # "targetArea":D
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v12, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 216
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    return-object v3

    .line 205
    .restart local v4    # "size":Lcom/android/camera/util/Size;
    .restart local v6    # "targetArea":D
    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static reduce(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 8
    .param p0, "aspectRatio"    # Lcom/android/camera/util/Size;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 299
    .local v4, "width":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 300
    .local v2, "height":Ljava/math/BigInteger;
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 301
    .local v1, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    div-int v3, v5, v6

    .line 302
    .local v3, "numerator":I
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    div-int v0, v5, v6

    .line 303
    .local v0, "denominator":I
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-direct {v5, v3, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v5
.end method
