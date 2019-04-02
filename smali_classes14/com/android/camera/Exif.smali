.class public Lcom/android/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraExif"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Exif;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/android/camera/exif/ExifInterface;
    .locals 4
    .param p0, "jpegData"    # [B

    .prologue
    .line 28
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 30
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/camera/Exif;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Failed to read EXIF data"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getOrientation(Lcom/android/camera/exif/ExifInterface;)I
    .locals 2
    .param p0, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 39
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v1}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v1

    goto :goto_0
.end method

.method public static getOrientation([B)I
    .locals 2
    .param p0, "jpegData"    # [B

    .prologue
    .line 48
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 51
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v1

    goto :goto_0
.end method

.method public static isValid([B)Z
    .locals 3
    .param p0, "jpegData"    # [B

    .prologue
    .line 55
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 57
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
