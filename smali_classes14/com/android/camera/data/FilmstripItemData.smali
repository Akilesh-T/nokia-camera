.class public Lcom/android/camera/data/FilmstripItemData;
.super Ljava/lang/Object;
.source "FilmstripItemData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItemData$Builder;
    }
.end annotation


# static fields
.field public static final MIME_TYPE_FAKE:Ljava/lang/String; = "image/fake"

.field public static final MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_MP4:Ljava/lang/String; = "video/mp4"

.field public static final MIME_TYPE_PHOTOSPHERE:Ljava/lang/String; = "application/vnd.google.panorama360+jpg"

.field public static final MIME_TYPE_RAW:Ljava/lang/String; = "image/raw"


# instance fields
.field private final mContentId:J

.field private final mCreationDate:Ljava/util/Date;

.field private final mDimensions:Lcom/android/camera/util/Size;

.field private final mFilePath:Ljava/lang/String;

.field private final mLastModifiedDate:Ljava/util/Date;

.field private final mLocation:Lcom/android/camera/data/Location;

.field private final mMimeType:Ljava/lang/String;

.field private final mOrientation:I

.field private final mSizeInBytes:J

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;)V
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

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/android/camera/data/FilmstripItemData;->mContentId:J

    .line 63
    iput-object p3, p0, Lcom/android/camera/data/FilmstripItemData;->mTitle:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/camera/data/FilmstripItemData;->mMimeType:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/camera/data/FilmstripItemData;->mCreationDate:Ljava/util/Date;

    .line 66
    iput-object p6, p0, Lcom/android/camera/data/FilmstripItemData;->mLastModifiedDate:Ljava/util/Date;

    .line 67
    iput-object p7, p0, Lcom/android/camera/data/FilmstripItemData;->mFilePath:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/android/camera/data/FilmstripItemData;->mUri:Landroid/net/Uri;

    .line 69
    iput-object p9, p0, Lcom/android/camera/data/FilmstripItemData;->mDimensions:Lcom/android/camera/util/Size;

    .line 70
    iput-wide p10, p0, Lcom/android/camera/data/FilmstripItemData;->mSizeInBytes:J

    .line 71
    iput p12, p0, Lcom/android/camera/data/FilmstripItemData;->mOrientation:I

    .line 72
    iput-object p13, p0, Lcom/android/camera/data/FilmstripItemData;->mLocation:Lcom/android/camera/data/Location;

    .line 73
    return-void
.end method


# virtual methods
.method public getContentId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/camera/data/FilmstripItemData;->mContentId:J

    return-wide v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mCreationDate:Ljava/util/Date;

    return-object v0
.end method

.method getDimensions()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mDimensions:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mLastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Lcom/android/camera/data/Location;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mLocation:Lcom/android/camera/data/Location;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/data/FilmstripItemData;->mOrientation:I

    return v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/camera/data/FilmstripItemData;->mSizeInBytes:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FilmstripItemData {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v2, p0, Lcom/android/camera/data/FilmstripItemData;->mContentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ",title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ",mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ",creationDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mCreationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ",lastModifiedDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mLastModifiedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ",filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ",uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ",dimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mDimensions:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ",sizeInBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-wide v2, p0, Lcom/android/camera/data/FilmstripItemData;->mSizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ",orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Lcom/android/camera/data/FilmstripItemData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ",location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mLocation:Lcom/android/camera/data/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
