.class public Lcom/android/camera/data/VideoItemData;
.super Lcom/android/camera/data/FilmstripItemData;
.source "VideoItemData.java"


# instance fields
.field private mVideoDurationMillis:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;J)V
    .locals 0
    .param p1, "contentId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "creationDate"    # Ljava/util/Date;
    .param p6, "lastModifiedDate"    # Ljava/util/Date;
    .param p7, "filePath"    # Ljava/lang/String;
    .param p8, "uri"    # Landroid/net/Uri;
    .param p9, "dimensions"    # Lcom/android/camera/util/Size;
    .param p10, "sizeInBytes"    # J
    .param p12, "orientation"    # I
    .param p13, "location"    # Lcom/android/camera/data/Location;
    .param p14, "videoDurationMillis"    # J

    .prologue
    .line 35
    invoke-direct/range {p0 .. p13}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;)V

    .line 37
    iput-wide p14, p0, Lcom/android/camera/data/VideoItemData;->mVideoDurationMillis:J

    .line 38
    return-void
.end method


# virtual methods
.method public getVideoDurationMillis()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/camera/data/VideoItemData;->mVideoDurationMillis:J

    return-wide v0
.end method
