.class public Lcom/android/camera/data/FilmstripItemData$Builder;
.super Ljava/lang/Object;
.source "FilmstripItemData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EMPTY:Ljava/util/Date;

.field public static final ZERO:Lcom/android/camera/util/Size;


# instance fields
.field private mContentId:J

.field private mCreationDate:Ljava/util/Date;

.field private mDimensions:Lcom/android/camera/util/Size;

.field private mFilePath:Ljava/lang/String;

.field private mLastModifiedDate:Ljava/util/Date;

.field private mLocation:Lcom/android/camera/data/Location;

.field private mMimeType:Ljava/lang/String;

.field private mOrientation:I

.field private mSizeInBytes:J

.field private mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemData$Builder;->EMPTY:Ljava/util/Date;

    .line 184
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemData$Builder;->ZERO:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mContentId:J

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mTitle:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mMimeType:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/android/camera/data/FilmstripItemData$Builder;->EMPTY:Ljava/util/Date;

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mCreationDate:Ljava/util/Date;

    .line 190
    sget-object v0, Lcom/android/camera/data/FilmstripItemData$Builder;->EMPTY:Ljava/util/Date;

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLastModifiedDate:Ljava/util/Date;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mFilePath:Ljava/lang/String;

    .line 193
    sget-object v0, Lcom/android/camera/data/FilmstripItemData$Builder;->ZERO:Lcom/android/camera/util/Size;

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mDimensions:Lcom/android/camera/util/Size;

    .line 194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mSizeInBytes:J

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mOrientation:I

    .line 196
    sget-object v0, Lcom/android/camera/data/Location;->UNKNOWN:Lcom/android/camera/data/Location;

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLocation:Lcom/android/camera/data/Location;

    .line 199
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mUri:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public static from(Lcom/android/camera/data/FilmstripItemData;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 4
    .param p0, "data"    # Lcom/android/camera/data/FilmstripItemData;

    .prologue
    .line 219
    new-instance v0, Lcom/android/camera/data/FilmstripItemData$Builder;

    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/data/FilmstripItemData$Builder;-><init>(Landroid/net/Uri;)V

    .line 220
    .local v0, "builder":Lcom/android/camera/data/FilmstripItemData$Builder;
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mContentId:J

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mTitle:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mMimeType:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mCreationDate:Ljava/util/Date;

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLastModifiedDate:Ljava/util/Date;

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mFilePath:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mDimensions:Lcom/android/camera/util/Size;

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getSizeInBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mSizeInBytes:J

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mOrientation:I

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getLocation()Lcom/android/camera/data/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLocation:Lcom/android/camera/data/Location;

    .line 230
    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/camera/data/FilmstripItemData;
    .locals 14

    .prologue
    .line 203
    new-instance v0, Lcom/android/camera/data/FilmstripItemData;

    iget-wide v1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mContentId:J

    iget-object v3, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mMimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mCreationDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLastModifiedDate:Ljava/util/Date;

    iget-object v7, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mFilePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mDimensions:Lcom/android/camera/util/Size;

    iget-wide v10, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mSizeInBytes:J

    iget v12, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mOrientation:I

    iget-object v13, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLocation:Lcom/android/camera/data/Location;

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;)V

    return-object v0
.end method

.method public withContentId(J)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 1
    .param p1, "contentId"    # J

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mContentId:J

    .line 235
    return-object p0
.end method

.method public withCreationDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "creationDate"    # Ljava/util/Date;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mCreationDate:Ljava/util/Date;

    .line 250
    return-object p0
.end method

.method public withDimensions(Lcom/android/camera/util/Size;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "dimensions"    # Lcom/android/camera/util/Size;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mDimensions:Lcom/android/camera/util/Size;

    .line 265
    return-object p0
.end method

.method public withFilePath(Ljava/lang/String;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mFilePath:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public withLastModifiedDate(Ljava/util/Date;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLastModifiedDate:Ljava/util/Date;

    .line 255
    return-object p0
.end method

.method public withLocation(Lcom/android/camera/data/Location;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "location"    # Lcom/android/camera/data/Location;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mLocation:Lcom/android/camera/data/Location;

    .line 280
    return-object p0
.end method

.method public withMimeType(Ljava/lang/String;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mMimeType:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public withOrientation(I)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mOrientation:I

    .line 275
    return-object p0
.end method

.method public withSizeInBytes(J)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 1
    .param p1, "sizeInBytes"    # J

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mSizeInBytes:J

    .line 270
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/android/camera/data/FilmstripItemData$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemData$Builder;->mTitle:Ljava/lang/String;

    .line 240
    return-object p0
.end method
