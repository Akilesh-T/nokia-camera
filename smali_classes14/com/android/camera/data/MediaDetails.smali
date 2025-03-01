.class public Lcom/android/camera/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SHUTTER_SPEED:I = 0x6a

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MediaDetails"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/MediaDetails;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static extractExifInfo(Lcom/android/camera/data/MediaDetails;Ljava/lang/String;)V
    .locals 7
    .param p0, "details"    # Lcom/android/camera/data/MediaDetails;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x67

    .line 138
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 140
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_0
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x66

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 149
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 151
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 153
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 155
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 157
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x69

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 159
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x6c

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 161
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x68

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 163
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {p0, v3, v4}, Lcom/android/camera/data/MediaDetails;->setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V

    .line 165
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v1, v3}, Lcom/android/camera/exif/ExifInterface;->getTag(I)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 166
    .local v2, "focalTag":Lcom/android/camera/exif/ExifTag;
    if-eqz v2, :cond_0

    .line 167
    const-wide/16 v4, 0x0

    .line 168
    invoke-virtual {v2, v4, v5}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/exif/Rational;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 167
    invoke-virtual {p0, v6, v3}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 169
    const v3, 0x7f080284

    invoke-virtual {p0, v6, v3}, Lcom/android/camera/data/MediaDetails;->setUnit(II)V

    .line 171
    :cond_0
    return-void

    .line 141
    .end local v2    # "focalTag":Lcom/android/camera/exif/ExifTag;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/camera/data/MediaDetails;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file to read exif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/camera/data/MediaDetails;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read exif from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seconds"    # J

    .prologue
    .line 177
    const-wide/16 v8, 0xe10

    div-long v2, p1, v8

    .line 178
    .local v2, "h":J
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    sub-long v8, p1, v8

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 179
    .local v4, "m":J
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    sub-long v6, p1, v8

    .line 181
    .local v6, "s":J
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 182
    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "durationValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 184
    .end local v0    # "durationValue":Ljava/lang/String;
    :cond_0
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "durationValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private static setExifData(Lcom/android/camera/data/MediaDetails;Lcom/android/camera/exif/ExifTag;I)V
    .locals 6
    .param p0, "details"    # Lcom/android/camera/data/MediaDetails;
    .param p1, "tag"    # Lcom/android/camera/exif/ExifTag;
    .param p2, "key"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getDataType()S

    move-result v1

    .line 116
    .local v1, "type":I
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 117
    :cond_0
    invoke-virtual {p1, v4, v5}, Lcom/android/camera/exif/ExifTag;->getValueAsRational(J)Lcom/android/camera/exif/Rational;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 123
    :goto_0
    const/16 v3, 0x66

    if-ne p2, v3, :cond_4

    .line 124
    new-instance v0, Lcom/android/camera/data/MediaDetails$FlashState;

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/camera/data/MediaDetails$FlashState;-><init>(I)V

    .line 126
    .local v0, "state":Lcom/android/camera/data/MediaDetails$FlashState;
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 131
    .end local v0    # "state":Lcom/android/camera/data/MediaDetails$FlashState;
    .end local v1    # "type":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 118
    .restart local v1    # "type":I
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1, v4, v5}, Lcom/android/camera/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p0, p2, v2}, Lcom/android/camera/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "unit"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mUnits:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
