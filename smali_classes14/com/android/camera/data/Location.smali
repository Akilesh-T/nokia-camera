.class public final Lcom/android/camera/data/Location;
.super Ljava/lang/Object;
.source "Location.java"


# static fields
.field public static final UNKNOWN:Lcom/android/camera/data/Location;

.field public static final ZERO:Lcom/android/camera/data/Location;


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    const-wide/16 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, v4, v5, v4, v5}, Lcom/android/camera/data/Location;-><init>(DD)V

    sput-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    .line 28
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/android/camera/data/Location;-><init>(DD)V

    sput-object v0, Lcom/android/camera/data/Location;->ZERO:Lcom/android/camera/data/Location;

    return-void
.end method

.method private constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/camera/data/Location;->mLatitude:D

    .line 35
    iput-wide p3, p0, Lcom/android/camera/data/Location;->mLongitude:D

    .line 36
    return-void
.end method

.method public static from(DD)Lcom/android/camera/data/Location;
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 95
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    .line 98
    :cond_0
    sget-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    .line 101
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/data/Location;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/data/Location;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/android/camera/data/Location;

    .line 73
    .local v0, "location":Lcom/android/camera/data/Location;
    iget-wide v4, v0, Lcom/android/camera/data/Location;->mLatitude:D

    iget-wide v6, p0, Lcom/android/camera/data/Location;->mLatitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iget-wide v4, v0, Lcom/android/camera/data/Location;->mLongitude:D

    iget-wide v6, p0, Lcom/android/camera/data/Location;->mLongitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%f, %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/camera/data/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/camera/data/Location;->mLongitude:D

    .line 48
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLongitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 87
    iget-wide v4, p0, Lcom/android/camera/data/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 88
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    .line 89
    .local v0, "result":I
    iget-wide v4, p0, Lcom/android/camera/data/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 91
    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/data/Location;->ZERO:Lcom/android/camera/data/Location;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLongitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/data/Location;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/Location;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
